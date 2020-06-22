import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { XahoiComponent } from './xahoi.component';

describe('XahoiComponent', () => {
  let component: XahoiComponent;
  let fixture: ComponentFixture<XahoiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ XahoiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(XahoiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
