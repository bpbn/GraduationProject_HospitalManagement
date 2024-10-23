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
import { BacsiService } from '../services/bacsi.service';

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
    maPhieuDangKy : '',
    maBenhNhan: '',
    maBHYT: '',
    ngayLap: '',
    trangThaiThanhToan: '',
    maBacSi: '',
    ngayKham: '',
    nvlap: '',
    nvthanhToan: '',
    sttkham:'',
    stttiepNhan:'',
    tinhTrangSucKhoe: '',
    hinhThucDangKy:''
  };

  workingDays: Date[] = [];
  availableShifts: string[] = []; 


  constructor(
    private http: HttpClient,
    private _snackBar: MatSnackBar,
    private router: Router,
    private bacsiService: BacsiService
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
    this.pdk.maBacSi = ''; 
    this.pdk.ngayKham = '';
    this.pdk.khungGioKham = '';
  }

  onDoctorChange() {
    if (this.pdk.maBacSi) {
      this.bacsiService.getDateByDoctor(this.pdk.maBacSi)
      .subscribe(response => {
          if (Array.isArray(response)) {
            this.workingDays = response.map(item => {
              if (item.ngayLam) { 
                const date = new Date(item.ngayLam);
                date.setHours(0, 0, 0, 0); 
                return date;
              }
              return null;
            }).filter((date): date is Date => date !== null); 
            console.log("Mã bác sĩ đã chọn:", this.pdk.maBacSi);
            console.log('Ngày làm việc của bác sĩ:', this.workingDays);
          } else {
            console.error('Phản hồi không phải là mảng:', response);
          }
        },
        (error: HttpErrorResponse) => {
          console.error("Lỗi khi lấy lịch làm việc của bác sĩ:", error);
        }
      );
    }
  }
  
  onDateChange() {
    const formattedDate = this.formatDate(new Date(this.pdk.ngayKham));
    this.bacsiService.getDoctorByDate(formattedDate).subscribe((res: any) => {
      this.doctors = res; 
      console.log('Danh sách bác sĩ theo ngày:', this.doctors);
    }, error => {
      console.error('Lỗi khi gọi API lấy bác sĩ theo ngày làm:', error);
    });
  }

  loadAllDoctors() {
    this.bacsiService.getAllDoctor().subscribe((res:any)=>{
      this.doctors = res;
      }, error => {
        console.error('Lỗi khi gọi API lấy danh sách bác sĩ:', error);
      });
      debugger;
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
  
   
  onSubmit() {
    debugger;
    if (this.isFormValid()) {
      this.bacsiService.themPhieuDangKy(this.pdk).subscribe(
        response => {
          console.log(this.pdk); 
          console.log('Phản hồi từ server:', response);
          this.openSnackBar('Đặt lịch hẹn thành công', 'OK');
          this.router.navigate(['/']); 
        },
        (error: HttpErrorResponse) => {
          console.error('Lỗi khi gọi API:', error);
          this.openSnackBar('Đặt lịch hẹn thất bại', 'OK');
        }
      );
    } else {
      this.openSnackBar('Form không hợp lệ', 'OK');
      console.error('Form không hợp lệ');
    }
  }

  isFormValid(): boolean {
    return this.pdk.maBacSi && this.pdk.ngayKham;
  }
}
