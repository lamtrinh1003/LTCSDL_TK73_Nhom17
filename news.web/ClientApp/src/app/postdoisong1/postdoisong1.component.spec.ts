import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Postdoisong1Component } from './postdoisong1.component';

describe('Postdoisong1Component', () => {
  let component: Postdoisong1Component;
  let fixture: ComponentFixture<Postdoisong1Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Postdoisong1Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Postdoisong1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
