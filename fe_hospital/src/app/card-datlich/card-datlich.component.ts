import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import {MatSnackBar} from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import { MatInputModule } from '@angular/material/input';
import { MatRadioModule } from '@angular/material/radio';

@Component({
  selector: 'app-card-datlich',
  standalone: true,
  templateUrl: './card-datlich.component.html',
  styleUrls: ['./card-datlich.component.scss'],
  imports: [FormsModule, CommonModule, MatDatepickerModule,
    MatNativeDateModule, MatRadioModule,
    MatInputModule,]
})
export class CardDatlichComponent implements OnInit {
  showDoctor: boolean = false;
  showDate: boolean = false;
  doctors: any[] = [];

  pdk: any = {
    maPhieuHen: '',
    tenBenhNhan: '',
    ngaySinh: '',
    gioiTinh: '',
    sdt: '',
    diaChi: '',
    bacSi: '',
    ngayKham: '',
    khungGioKham: '',
    vanDeSucKhoe: ''
  };

  workingDays: Date[] = [];
  availableShifts: string[] = []; 

  private apiUrl = 'http://localhost:4848/phieuhen/themPH';
  private doctorsApiUrl = 'http://localhost:4848/phieuhen/bstheongaylam';
  private allDoctorsApiUrl = 'http://localhost:4848/bacsi/danhsachbs';
  private dateApiUrl = 'http://localhost:4848/phieuhen/ngaylamvieccuabs';
  private shiftApiUrl = 'http://localhost:4848/phieuhen/caLamViec';

  constructor(
    private http: HttpClient,
    private _snackBar: MatSnackBar,
    private router: Router,
  ) {}

  ngOnInit() {
  }

  openSnackBar(message: string, action: string) {
    this._snackBar.open(message, action);
  }
  
  showDoctorSection() {
    this.loadAllDoctors();
    this.showDoctor = true;
    this.showDate = false;
  }

  showDateSection() {
    this.showDoctor = false;
    this.showDate = true;
    this.pdk.bacSi = ''; 
    this.pdk.ngayKham = '';
    this.pdk.khungGioKham = '';
  }

  loadAllDoctors() {
    this.http.get<any[]>(this.allDoctorsApiUrl)
      .subscribe(response => {
        console.log('Danh sách bác sĩ:', response);
        this.doctors = response;
      }, error => {
        console.error('Lỗi khi gọi API lấy danh sách bác sĩ:', error);
      });
  }

  onDateChange() {
    if (this.pdk.ngayKham && this.pdk.khungGioKham) {
      this.getBacSiByDateAndShift();
    }
  }

  onShiftChange($event: any) {
    if (this.pdk.ngayKham && this.pdk.khungGioKham) {
      this.getBacSiByDateAndShift();
    }
  }

  getBacSiByDateAndShift() {
    this.http.get<any[]>(`${this.doctorsApiUrl}?ngayLam=${this.pdk.ngayKham}&caLam=${this.pdk.khungGioKham}`)
      .subscribe(response => {
        console.log('Bác sĩ theo ngày và ca làm:', response);
        this.doctors = response;
      }, error => {
        console.error('Lỗi khi gọi API lấy bác sĩ:', error);
      });
  }


  onDoctorChange() {
    if (this.pdk.bacSi) {
      this.http.get<any[]>(`${this.dateApiUrl}?maNhanVien=${this.pdk.bacSi}`)
        .subscribe(response => {
          console.log('Ngày làm việc của bác sĩ:', response);
          this.workingDays = response.map(item => {
            const date = new Date(item.ngayLam);
            date.setHours(0, 0, 0, 0); 
            return date;
          });
        }, error => {
          console.error('Lỗi khi gọi API lấy ngày làm việc của bác sĩ:', error);
        });
    }
  }
 
  getShiftByDateAndDoctor() {
    const currentDoctor = this.pdk.bacSi; 
    const selectedDate = this.pdk.ngayKham;
    console.log('Gọi API với maNhanVien:', currentDoctor, 'và ngayLam:', selectedDate);
    this.http.get<string[]>(`${this.shiftApiUrl}?maNhanVien=${currentDoctor}&ngayLam=${selectedDate}`)
      .subscribe(response => {
        console.log('Ca làm theo bác sĩ và ngày làm:', response);
        this.availableShifts = response; // Lưu trữ thông tin khung giờ
        console.log('availableShifts:', this.availableShifts);
      }, error => {
        console.error('Lỗi khi gọi API lấy bác sĩ:', error);
      });
  }
  
  onShiftChange2(event: any) {
    const selectedDate = event.value;
    console.log('Ngày được chọn:', selectedDate);
    if (this.pdk.bacSi && selectedDate) {
      this.pdk.ngayKham = this.formatDate(selectedDate);
      this.getShiftByDateAndDoctor();
    }
  }
  
  formatDate(date: Date): string {
    const year = date.getFullYear();
    const month = ('0' + (date.getMonth() + 1)).slice(-2);
    const day = ('0' + date.getDate()).slice(-2);
    return `${year}-${month}-${day}`;
  }
  
  
  

  myFilter = (d: Date | null): boolean => {
    const day = (d || new Date()).toISOString().split('T')[0];
    return this.workingDays.some(workDay => workDay.toISOString().split('T')[0] === day);
  }
  
   
  

  themPhieuHen() {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    console.log('Dữ liệu gửi đến API:', this.pdk);
    this.http.post<string>(this.apiUrl, this.pdk, { headers }).subscribe(
      response => {
        console.log('Phản hồi từ server:', response);
      },
      error => {
        console.error('Lỗi khi gọi API:', error);
      }
    );
  }
  
  
  onSubmit() {
   
  this.themPhieuHen();
  this.openSnackBar('Đặt lịch hẹn thành công', 'OK');
  this.router.navigate(['/']); 
    // if (this.isFormValid()) {
    //   this.themPhieuHen();
    //   this.openSnackBar('Đặt lịch hẹn thành công', 'OK');
    //   this.router.navigate(['/']); 
    // } else {
    //   this.openSnackBar('Đặt lịch hẹn thất bại', 'OK');
    //   console.error('Form không hợp lệ');
    // }
  }
  

  // isFormValid(): boolean {
  //   // Kiểm tra các điều kiện của form, ví dụ:
  //   return this.pdk.tenBenhNhan && this.pdk.ngaySinh && this.pdk.gioiTinh && this.pdk.sdt &&
  //    this.pdk.diaChi && this.pdk.bacSi && this.pdk.ngayKham && this.pdk.khungGioKham;
  // }
  
}
