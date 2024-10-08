import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LichlamviecComponent } from './lichlamviec.component';

describe('LichlamviecComponent', () => {
  let component: LichlamviecComponent;
  let fixture: ComponentFixture<LichlamviecComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [LichlamviecComponent]
    });
    fixture = TestBed.createComponent(LichlamviecComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
