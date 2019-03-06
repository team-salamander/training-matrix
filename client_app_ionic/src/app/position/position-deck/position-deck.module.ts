import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {FormsModule} from '@angular/forms';
import {RouterModule} from '@angular/router';
import {IonicModule} from '@ionic/angular';
import {PositionDeckPage} from './position-deck.page';
import {PositionListComponent} from '../position-list/position-list.component';
import {SearchComponent} from '../../shared/components/search/search.component';
import {MenuComponent} from '../../shared/components/menu/menu.component';



@NgModule({
    imports: [
        CommonModule,
        FormsModule,
        IonicModule,
        RouterModule.forChild([{ path: '', component: PositionDeckPage}])
    ],
    declarations: [
        PositionDeckPage,
        PositionListComponent,
        SearchComponent,
        MenuComponent
    ]
})
export class PositionPageModule {
}
