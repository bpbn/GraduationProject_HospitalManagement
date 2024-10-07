import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TrangchuComponent } from './trangchu/trangchu.component';
import { BacsiComponent } from './bacsi/bacsi.component';
import { CtbacsiComponent } from './ctbacsi/ctbacsi.component';
import { DatlichComponent } from './datlich/datlich.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' }, 
  { path: 'home', title: 'Trang chủ', component: TrangchuComponent }, 
  { path: 'bacsi', title: 'Bác sĩ', component: BacsiComponent }, 
  { 
    path: 'ctbacsi/:id', 
    title: 'Thông tin bác sĩ', 
    component: CtbacsiComponent 
  }, 
  { 
    path: 'datlich', 
    title: 'Đặt lịch hẹn', 
    component: DatlichComponent 
  },
  { 
    path: 'login', 
    title: 'Đăng nhập', 
    component: LoginComponent 
  }, 
  { 
    path: 'register', 
    title: 'Đăng ký', 
    component: RegisterComponent 
  } 
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
