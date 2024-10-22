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
    mabacSi: '',
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
    this.pdk.bacSi = ''; 
    this.pdk.ngayKham = '';
    this.pdk.khungGioKham = '';
  }

  onDateChange() {
    if (this.pdk.ngayKham && this.pdk.khungGioKham) {
      
    }
  }

  onShiftChange($event: any) {
    if (this.pdk.ngayKham && this.pdk.khungGioKham) {
   
    }
  }

  loadAllDoctors() {
    this.bacsiService.getAllDoctor().subscribe((res:any)=>{
      this.doctors = res;
      }, error => {
        console.error('Lỗi khi gọi API lấy danh sách bác sĩ:', error);
      });
  }
  
  onShiftChange2(event: any) {
    const selectedDate = event.value;
    console.log('Ngày được chọn:', selectedDate);
    if (this.pdk.bacSi && selectedDate) {
      this.pdk.ngayKham = this.formatDate(selectedDate);
   
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
  
   
  onSubmit() {
   
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
