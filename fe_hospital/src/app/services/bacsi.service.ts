
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class BacsiService {

  apiURL: string = "http://localhost:1314/bacsi"
  apiURL2: string = "http://localhost:1314/phieudangky"

  constructor(private http: HttpClient){}

  getAllDoctor(){
    return this.http.get(this.apiURL + "/all");
  }

  getTongBacSi(){
    return this.http.get<number>(this.apiURL + "/tong-bs");
  }

  getTongTienSi(){
    return this.http.get<number>(this.apiURL + "/tong-ts");
  }

  getTongThacSi(){
    return this.http.get<number>(this.apiURL + "/tong-ths");
  }

  getTongGSvaPGS(){
    return this.http.get<number>(this.apiURL + "/tong-gs-pgs");
  }

  getListHocVi(){
    return this.http.get(this.apiURL + "/dshocvi");
  }

  getListHocHam(){
    return this.http.get<string[]>(this.apiURL + "/dshocham");
  }

  getListChuyenKhoa(){
    return this.http.get<string[]>(this.apiURL + "/dschuyenkhoa");
  }

  getListDanhHieu(id: string){
    return this.http.get(this.apiURL + "/hocvi/" + id);
  }

  getBacSiByID(id: string){
    return this.http.get(this.apiURL + "/timbstheoma/" + id);
  }

  getHocViCuaBS(id: string){
    return this.http.get(this.apiURL + "/hocvi/" + id);
  }


//chưa sửa
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
  
