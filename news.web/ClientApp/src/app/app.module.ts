import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { CounterComponent } from './counter/counter.component';
import { FetchDataComponent } from './fetch-data/fetch-data.component';
import { TintucComponent } from './tintuc/tintuc.component';
import { LoginComponent } from './login/login.component';
import { StarComponent } from './star/star.component';
import { PostComponent } from './post/post.component';
import { ThethaoComponent } from './thethao/thethao.component';
import { ThegioiComponent } from './thegioi/thegioi.component';
import { DoisongComponent } from './doisong/doisong.component';
import { BeautyfashionComponent } from './beautyfashion/beautyfashion.component';
import { XahoiComponent } from './xahoi/xahoi.component';
import { CineComponent } from './cine/cine.component';
import { MusikComponent } from './musik/musik.component';
import { TvshowComponent } from './tvshow/tvshow.component';
import { PostdoisongComponent } from './postdoisong/postdoisong.component';
import { Postdoisong1Component } from './postdoisong1/postdoisong1.component';
import { LoaitinComponent } from './loaitin/loaitin.component';
import { TheloaiComponent } from './theloai/theloai.component';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    CounterComponent,
    FetchDataComponent,
    TintucComponent,
    LoginComponent,
    StarComponent,
    PostComponent,
    MusikComponent,
    CineComponent,
    BeautyfashionComponent,
    XahoiComponent,
    DoisongComponent,
    ThegioiComponent,
    ThethaoComponent,
    TvshowComponent,
    PostdoisongComponent,
    Postdoisong1Component,
    LoaitinComponent,
    TheloaiComponent,
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'counter', component: CounterComponent },
      { path: 'fetch-data', component: FetchDataComponent },
      { path: 'search-tintuc', component: TintucComponent },
      { path: 'login', component: LoginComponent },
      { path: 'star', component: StarComponent },
      { path: 'post', component: PostComponent },
      { path: 'musik', component: MusikComponent },
      { path: 'cine', component: CineComponent },
      { path: 'beatyfashion', component: BeautyfashionComponent },
      { path: 'xahoi', component: XahoiComponent },
      { path: 'doisong', component: DoisongComponent },
      { path: 'thegioi', component: ThegioiComponent },
      { path: 'thethao', component: ThethaoComponent },
      { path: 'tvshow', component: TvshowComponent },
      { path: 'postdoisong', component: PostdoisongComponent },
      { path: 'postdoisong1', component: Postdoisong1Component },
      { path: 'loaitin', component: LoaitinComponent },
      { path: 'theloai', component: TheloaiComponent },
    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
