import { Bacsi } from 'src/type';
import { Component } from '@angular/core';
import { BacsiService } from '../services/bacsi.service';
import { CommonModule } from '@angular/common';
import { CtbacsiComponent } from '../ctbacsi/ctbacsi.component';

@Component({
  selector: 'app-lichlamviec',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './lichlamviec.component.html',
  styleUrls: ['./lichlamviec.component.scss']
})
export class LichlamviecComponent {

  constructor(
    private bacsiService : BacsiService,
    private bacsi: CtbacsiComponent,
  ){} 

  manv: string = "";
  week1: number[] = [];
  week2: number[] = [];
  week3: number[] = [];
  week4: number[] = [];
  week5: number[] = [];
  workdays: number[] = [];

  ngOnInit() {
    this.getWeek1();
    this.getWeek2();
    this.getWeek3();
    this.getWeek4();
    this.getWeek5();
    this.manv = this.bacsi.id;
    this.getWorkdays();
  }

  getWeek1(){
    this.bacsiService.getNgayTrongThang(1).subscribe((res:any)=>{
        this.week1 = res;
    })
  }
  getWeek2(){
    this.bacsiService.getNgayTrongThang(2).subscribe((res:any)=>{
        this.week2 = res;
    })
  }
  getWeek3(){
    this.bacsiService.getNgayTrongThang(3).subscribe((res:any)=>{
        this.week3 = res;
    })
  }
  getWeek4(){
    this.bacsiService.getNgayTrongThang(4).subscribe((res:any)=>{
        this.week4 = res;
    })
  }
  getWeek5(){
    this.bacsiService.getNgayTrongThang(5).subscribe((res:any)=>{
        this.week5 = res;
    })
  }
  getWorkdays(){
    this.bacsiService.getNgayLamCuaBacSiTrongThang(this.manv).subscribe((res:any) => {
      this.workdays = res;
    })
  }
  checkngaybangnhau(a: number){
    return this.workdays.includes(a);
  }
}
