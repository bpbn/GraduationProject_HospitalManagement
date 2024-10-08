import { ChangeDetectorRef, Component } from '@angular/core';
import { BacsiService } from '../services/bacsi.service';

@Component({
  selector: 'app-bacsi',
  templateUrl: './bacsi.component.html',
  styleUrls: ['./bacsi.component.scss']
})

export class BacsiComponent {
  currentPage: number = 1;
  pageSize: number = 10;
  displayedDoctors: any[] = [];

  constructor(
    private bacsiService : BacsiService,
    private cdRef: ChangeDetectorRef 
  ){}

  ListHocVi: any[] = [];
  ListHocHam: string[] = [];
  ListChucVu: string[] = [];
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
    this.getListHocHam();
    this.getListChuyenKhoa();
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

  getListChucVu(){
    this.bacsiService.getListChuyenKhoa().subscribe((res:any)=>{
      this.ListChucVu = res;
    })
  }

  getListBacSi(){
    this.bacsiService.getAllDoctor().subscribe((res:any)=>{
        this.ListBacSi = res;
        this.originalListBacSi = [...this.ListBacSi]; 
    })
  }

 //học vị chưa làm
  
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
    const selectedChucVu = this.chuyenKhoaSelected;
    const selectedHocHam = this.hocHamSelected;
    const selectedHocVi = this.hocViSelected;
    
    if(this.hocViSelected == "")
    {
      const filteredBacSi = this.ListBacSi.filter((bs) => {
        return (!selectedChucVu || bs.chucVu === selectedChucVu) &&
                (!selectedHocHam || bs.hocHam === selectedHocHam);
      });   
      this.ListBacSi = filteredBacSi;
      this.updateDisplayedDoctors();
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
        this.updateDisplayedDoctors();
      });
    }
  }

  updateDisplayedDoctors() {
    const startIndex = (this.currentPage - 1) * this.pageSize;
    const endIndex = startIndex + this.pageSize;
    this.displayedDoctors = this.ListBacSi.slice(startIndex, endIndex);
  }
  

  onPageChange(event: any) {
    this.currentPage = event.pageIndex + 1; 
    this.updateDisplayedDoctors();
  }

}
