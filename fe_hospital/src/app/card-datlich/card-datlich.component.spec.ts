import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CardDatlichComponent } from './card-datlich.component';

describe('CardDatlichComponent', () => {
  let component: CardDatlichComponent;
  let fixture: ComponentFixture<CardDatlichComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CardDatlichComponent]
    });
    fixture = TestBed.createComponent(CardDatlichComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
