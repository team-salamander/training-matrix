import {IonicModule} from '@ionic/angular';
import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {FormsModule} from '@angular/forms';
import {TabsPageRoutingModule} from './tabs.router.module';
import {TabsPage} from './tabs.page';
import {AboutPageModule} from '../about/about.module';
import {HomePageModule} from '../home/home.module';
import {PositionPageModule} from '../position/position-deck/position-deck.module';
import {PositionListingPageModule} from '../position/position-listing/position-listing.module';
import {PositionCourseDetailPageModule} from '../position/position-course-detail/position-course-detail.module';

@NgModule({
    imports: [
        IonicModule,
        CommonModule,
        FormsModule,
        TabsPageRoutingModule,
        HomePageModule,
        AboutPageModule,
        PositionPageModule,
        PositionListingPageModule,
        PositionCourseDetailPageModule
    ],
    declarations: [TabsPage]
})
export class TabsPageModule {
}
