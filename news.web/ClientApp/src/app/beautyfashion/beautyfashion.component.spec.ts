import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BeautyfashionComponent } from './beautyfashion.component';

describe('BeautyfashionComponent', () => {
  let component: BeautyfashionComponent;
  let fixture: ComponentFixture<BeautyfashionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BeautyfashionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BeautyfashionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
