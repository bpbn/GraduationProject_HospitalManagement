import { TestBed } from '@angular/core/testing';

import { BacsiService } from './bacsi.service';

describe('BacsiService', () => {
  let service: BacsiService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(BacsiService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
