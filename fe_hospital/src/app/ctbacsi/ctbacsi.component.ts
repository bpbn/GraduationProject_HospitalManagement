import { Component, signal } from '@angular/core';
import { ChangeDetectionStrategy } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { CardDatlichComponent } from '../card-datlich/card-datlich.component';
import { ActivatedRoute } from '@angular/router';
import { ChangeDetectorRef } from '@angular/core';
import { BacsiService } from '../services/bacsi.service'; 
import { MatNativeDateModule } from '@angular/material/core';
import { LichlamviecComponent } from '../lichlamviec/lichlamviec.component';


@Component({
  selector: 'app-ctbacsi',
  standalone: true,
  imports: [MatCardModule, MatDatepickerModule, MatNativeDateModule, CardDatlichComponent, LichlamviecComponent],
  changeDetection: ChangeDetectionStrategy.OnPush,
  templateUrl: './ctbacsi.component.html',
  styleUrls: ['./ctbacsi.component.scss'],
})
export class CtbacsiComponent {

  selected = signal<Date | null>(null); 

  constructor(
    private bacsiService: BacsiService,
    private route: ActivatedRoute,
    private cdRef: ChangeDetectorRef 
  ) {}

  ttbacsi: any = {};
  id: string = '';
  ListDanhHieu: any[] = [];
  DanhHieu: string = '';
  ListGioiThieu: string[] = [];
  date: any[] = [];

  ngOnInit() {
    this.route.params.subscribe(param => {
      this.id = param['id'];
    });
    this.getTTBS();
    this.getListDanhHieu();
    this.getDanhHieuByMaNhanVien();
  }

  getTTBS() {
    this.bacsiService.getBacSiByID(this.id).subscribe((res: any) => {
      this.ttbacsi = res;
      this.cdRef.markForCheck();
    });
  }

  getListDanhHieu() {
    this.bacsiService.getListDanhHieu().subscribe((res: any) => {
      this.ListDanhHieu = res;
    });
  }

  getDanhHieuByMaNhanVien() {
    const bacsi = this.ListDanhHieu.find(bs => bs.maNhanVien === this.id);
    if (bacsi && bacsi.danhHieu) {
      this.DanhHieu = bacsi.danhHieu;
    } else {
      this.DanhHieu = '';
    }
  }
}
