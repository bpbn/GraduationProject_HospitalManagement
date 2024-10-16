import { BacsiService } from './../services/bacsi.service';
import { Component } from '@angular/core';

@Component({
  selector: 'app-list-doctors',
  templateUrl: './list-doctors.component.html',
  styleUrls: ['./list-doctors.component.scss']
})
export class ListDoctorsComponent {

  constructor(
    private bacsiService: BacsiService,
  ){}

  ListHocVi: any[] = [];
  ListHocHam: string[] = [];
  ListChuyenKhoa: any[] = [];
  ListBacSi: any[] = [];
  ListDanhHieu: any[] = [];
  bacSi: any = {};
  ListHocViCuaBS: string[] = [];
  originalListBacSi: any[] = [];
  chuyenKhoaSelected: string = "";
  hocHamSelected: string = "";
  hocViSelected: string = "";

  ngOnInit() {
    this.getListHocVi();
    this.getListChuyenKhoa();
    this.getListHocHam();
    this.getListBacSi();
  }

  getListHocVi(){
    this.bacsiService.getListHocVi().subscribe((res:any)=>{
      this.ListHocVi = res;
    })
  }

  getListChuyenKhoa(){
    this.bacsiService.getListChuyenKhoa().subscribe((res:any)=>{
      this.ListChuyenKhoa = res;
    })
  }


  getListHocHam(){
    this.bacsiService.getListHocHam().subscribe((res:any)=>{
      this.ListHocHam = res;
    })
  }

  getListBacSi(){
    this.bacsiService.getAllDoctor().subscribe((res:any)=>{
        this.ListBacSi = res;
        this.originalListBacSi = [...this.ListBacSi]; 
    })
  }

  getDanhHieu(id: string) {
    this.bacsiService.getHocViCuaBS(id).subscribe((res: any) => {
    return res;
    });
  }

  onChuyenKhoaChange(event: any) {
    this.resetList()
    this.filterBacSi();
  }

  onHocHamChange(event: any) {
    this.resetList()
    this.filterBacSi();
  }

  onHocViChange(event: any) {
    this.resetList()
    this.filterBacSi();
  }
  
  resetList() {
    this.ListBacSi = [...this.originalListBacSi];
  }


  filterBacSi() {
    const selectedChuyenKhoa = this.chuyenKhoaSelected;
    const selectedHocHam = this.hocHamSelected;
    const selectedHocVi = this.hocViSelected;
    
    if(this.hocViSelected == "")
    {
      const filteredBacSi = this.ListBacSi.filter((bs) => {
        return (!selectedChuyenKhoa || bs.chuyenKhoa.maChuyenKhoa === selectedChuyenKhoa) &&
                (!selectedHocHam || bs.hocHam === selectedHocHam);
      });   
      this.ListBacSi = filteredBacSi;
    }
    else
    {
      const promises = this.ListBacSi.map(bs => {
        return this.bacsiService.kiemTraHVTonTai(bs.maBacSi, selectedHocVi).toPromise();
      });
    
      Promise.all(promises).then(results => {
        const filteredBacSi = this.ListBacSi.filter((bs, index) => {
          return (!selectedChuyenKhoa || bs.chuyenKhoa.maChuyenKhoa === selectedChuyenKhoa) &&
                (!selectedHocHam || bs.hocHam === selectedHocHam) &&
                (!selectedHocVi || results[index] === 1);
        });
        this.ListBacSi = filteredBacSi;
      });
    }
  }

}
