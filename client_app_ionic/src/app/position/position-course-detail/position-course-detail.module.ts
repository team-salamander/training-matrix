import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { PositionCourseDetailPage } from './position-course-detail.page';


const routes: Routes = [
  {
    path: '',
    component: PositionCourseDetailPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [PositionCourseDetailPage]
})
export class PositionCourseDetailPageModule {}
