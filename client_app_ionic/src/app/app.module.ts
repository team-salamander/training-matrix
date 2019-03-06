import {NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {RouteReuseStrategy} from '@angular/router';

import {IonicModule, IonicRouteStrategy} from '@ionic/angular';
import {SplashScreen} from '@ionic-native/splash-screen/ngx';
import {StatusBar} from '@ionic-native/status-bar/ngx';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {HttpClientModule} from '@angular/common/http';
import {PositionPageModule} from './position/position-deck/position-deck.module';
import {AboutPageModule} from './about/about.module';
import {HomePageModule} from './home/home.module';
import {PositionListingPageModule} from './position/position-listing/position-listing.module';
import {PositionCourseDetailPageModule} from './position/position-course-detail/position-course-detail.module';





@NgModule({
    declarations: [
        AppComponent
    ],
    entryComponents: [],
    imports: [
        BrowserModule,
        HttpClientModule,
        IonicModule.forRoot(),
        AppRoutingModule,
        PositionPageModule,
        AboutPageModule,
        HomePageModule,
        PositionListingPageModule,
        PositionCourseDetailPageModule],
    providers: [
        StatusBar,
        SplashScreen,
        {provide: RouteReuseStrategy, useClass: IonicRouteStrategy}
    ],
    bootstrap: [AppComponent]
})
export class AppModule {
}
