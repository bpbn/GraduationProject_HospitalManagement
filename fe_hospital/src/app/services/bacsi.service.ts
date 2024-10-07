
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class BacsiService {

  apiURL: string = "http://localhost:4848/bacsi"
  apiURL2: string = "http://localhost:4848/phieuhen"

  constructor(private http: HttpClient){}

  getAllDoctor(){
    return this.http.get(this.apiURL + "/danhsachbs");
  }

  getTongBacSi(){
    return this.http.get<number>(this.apiURL + "/tongBS");
  }

  getTongTienSi(){
    return this.http.get<number>(this.apiURL + "/tongTS");
  }

  getTongThacSi(){
    return this.http.get<number>(this.apiURL + "/tongThS");
  }

  getTongGSvaPGS(){
    return this.http.get<number>(this.apiURL + "/tongGSvaPGS");
  }

  getListHocVi(){
    return this.http.get(this.apiURL + "/danhsachhv");
  }

  getListHocHam(){
    return this.http.get<string[]>(this.apiURL + "/danhsachhh");
  }

  getListChucVu(){
    return this.http.get<string[]>(this.apiURL + "/danhsachcv");
  }

  getListDanhHieu(){
    return this.http.get(this.apiURL + "/danhsachdh");
  }

  getBacSiByID(id: string){
    return this.http.get(this.apiURL + "/timbstheoma/" + id);
  }

  getHocViCuaBS(id: string){
    return this.http.get(this.apiURL + "/hocvi/" + id);
  }

  kiemTraHVTonTai(id: string, maHocVi: string){
    return this.http.get<number>(this.apiURL + "/kiemTraHVCuaBS/" + id + "/" + maHocVi);
  }

  getAvailableDatesForDoctor(maBacSi: string){
    return this.http.get(this.apiURL2 + "/ngaylamvieccuabs/" + maBacSi);
  }

  getNgayLamCuaBacSi(id: string){
    return this.http.get(this.apiURL + "/ngayLamViec/" + id);
  }

  getNgayLamCuaBacSiTrongThang(id: string){
    return this.http.get(this.apiURL + "/ngayLamViecTrongThang/" + id);
  }

  getCaLamCuaBacSi(id: string, date: string){
    return this.http.get(this.apiURL + "/caLamViec/" + id + "/" + date);
  }

  getNgayTrongThang(i: number){
    return this.http.get(this.apiURL + "/tachNgayTheoTuan/" + i);
  }
}
  
