import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {TabsPage} from './tabs.page';
import {AboutPage} from '../about/about.page';
import {PositionDeckPage} from '../position/position-deck/position-deck.page';
import {PositionListingPage} from '../position/position-listing/position-listing.page';
import {PositionCourseDetailPage} from '../position/position-course-detail/position-course-detail.page';
import {HomePage} from '../home/home.page';

const routes: Routes = [
    {
        path: 'tabs',
        component: TabsPage,
        children: [
            {
                path: '',
                redirectTo: '/tabs/(position:position)',
                pathMatch: 'full',
            },
            {
                path: 'about',
                outlet: 'about',
                component: AboutPage
            },
            {
                path: 'position',
                outlet: 'position',
                component: PositionDeckPage
            },
            {
                path: 'position/:positionId',
                outlet: 'position',
                component: PositionListingPage
            },
            {
                path: 'position/:positionId/courses',
                outlet: 'position',
                component: PositionCourseDetailPage
            },
            {
                path: 'home',
                outlet: 'home',
                component: HomePage
            }
        ]
    },
    {
        path: '',
        redirectTo: '/tabs/(home:home)',
        pathMatch: 'full'
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class TabsPageRoutingModule {
}
