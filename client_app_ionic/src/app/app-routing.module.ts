import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {AboutPage} from './about/about.page';
import {PositionDeckPage} from './position/position-deck/position-deck.page';
import {PositionListingPage} from './position/position-listing/position-listing.page';
import {PositionCourseDetailPage} from './position/position-course-detail/position-course-detail.page';
import {HomePage} from './home/home.page';

const routes: Routes = [
    {
        path: 'position',
        component: PositionDeckPage
    },
    {
        path: 'about',
        component: AboutPage
    },
    {
        path: 'position/:positionId',
        component: PositionListingPage
    },
    {
        path: 'position/:positionId/courses',
        component: PositionCourseDetailPage
    },
    {
        path: 'home',
        component: HomePage
    },
    {path: '', redirectTo: 'home', pathMatch: 'full'}
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})
export class AppRoutingModule {
}
