
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable

 } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BacsiService {

  apiURL: string = "http://localhost:1314/bacsi"
  apiURL2: string = "http://localhost:1314/phieudangky"
  apiURL3: string = "http://localhost:1314/lichlamviec"

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

  getDateByDoctor(maBacSi: string){
    return this.http.get(this.apiURL3 + "/ngaylamtheobacsi/" + maBacSi);
  }

  getDoctorByDate(ngayLam: string) {
    return this.http.get(`${this.apiURL3}/bacsitheongaylam?ngayLam=${ngayLam}`);
  }

  themPhieuDangKy(pdk: any): Observable<string> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    return this.http.post<string>(`${this.apiURL2}/them`, pdk, { headers });
  }

  getNgayLamCuaBacSiTrongThang(id: string){
    return this.http.get(this.apiURL + "/ngayLamViecTrongThang/" + id);
  }

  getNgayTrongThang(i: number){
    return this.http.get(this.apiURL + "/tachNgayTheoTuan/" + i);
  }

}
  
