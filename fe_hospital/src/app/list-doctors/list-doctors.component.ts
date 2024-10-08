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
  ListChucVu: string[] = [];
  ListBacSi: any[] = [];
  ListDanhHieu: any[] = [];
  bacSi: any = {};
  ListHocViCuaBS: string[] = [];
  originalListBacSi: any[] = [];
  chucVuSelected: string = "";
  hocHamSelected: string = "";
  hocViSelected: string = "";

  ngOnInit() {
    this.getListHocVi();
    this.getListHocHam();
    this.getListBacSi();
    this.getListDanhHieu();
  }

  getListHocVi(){
    this.bacsiService.getListHocVi().subscribe((res:any)=>{
      this.ListHocVi = res;
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

  getListDanhHieu(){
    this.bacsiService.getListDanhHieu().subscribe((res:any)=>{
        this.ListDanhHieu = res;
    })
  }

  getDanhHieuByMaNhanVien(maNhanVien: string) {
    const bacsi = this.ListDanhHieu.find(bs => bs.maNhanVien === maNhanVien);
    if (bacsi && bacsi.danhHieu) {
      return bacsi.danhHieu;
    } else {
        return "";
    };
  }

  onChucVuChange(event: any) {
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
    const selectedChucVu = this.chucVuSelected;
    const selectedHocHam = this.hocHamSelected;
    const selectedHocVi = this.hocViSelected;
    
    if(this.hocViSelected == "")
    {
      const filteredBacSi = this.ListBacSi.filter((bs) => {
        return (!selectedChucVu || bs.chucVu === selectedChucVu) &&
                (!selectedHocHam || bs.hocHam === selectedHocHam);
      });   
      this.ListBacSi = filteredBacSi;
    }
    else
    {
      const promises = this.ListBacSi.map(bs => {
        return this.bacsiService.kiemTraHVTonTai(bs.maNhanVien, selectedHocVi).toPromise();
      });
    
      Promise.all(promises).then(results => {
        const filteredBacSi = this.ListBacSi.filter((bs, index) => {
          return (!selectedChucVu || bs.chucVu === selectedChucVu) &&
                (!selectedHocHam || bs.hocHam === selectedHocHam) &&
                (!selectedHocVi || results[index] === 1);
        });
        this.ListBacSi = filteredBacSi;
      });
    }
  }

}
