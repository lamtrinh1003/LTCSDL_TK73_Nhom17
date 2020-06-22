import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PostdoisongComponent } from './postdoisong.component';

describe('PostdoisongComponent', () => {
  let component: PostdoisongComponent;
  let fixture: ComponentFixture<PostdoisongComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PostdoisongComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PostdoisongComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
