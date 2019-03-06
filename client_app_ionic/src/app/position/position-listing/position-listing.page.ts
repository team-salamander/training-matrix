import {Component} from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import {map, tap} from 'rxjs/operators';
import {ClassificationService} from '../../shared/services/classification.service';
import {Position} from '../../shared/models/position';
import {Location} from '@angular/common';
import {forEach} from '@angular-devkit/schematics';

@Component({
    selector: 'app-position-listing',
    templateUrl: './position-listing.page.html',
    styleUrls: ['./position-listing.page.scss'],
})
export class PositionListingPage {

    positionId: number;
    title: string;
    positions: Position[] = [];
    selectedSkills: number[] = [];

    constructor(
        private route: ActivatedRoute,
        private classificationService: ClassificationService,
        private location: Location) {
    }

    ionViewWillEnter() {
        this.positionId = +this.route.snapshot.paramMap.get('positionId');

        this.classificationService.getPositionData(this.positionId).pipe(
            map((positions: Position[]) => {
                this.positions = Object.keys(positions)
                    .map(i => positions[i]);

                for (let count = 0; count < this.positions[0][0].position_details.length; count++) {
                    if (!this.selectedSkills.includes(this.positions[0][0].position_details[count].skill_id)) {
                        this.selectedSkills.push(this.positions[0][0].position_details[count].skill_id);
                    }

                }
            }))
            .subscribe();
    }

    addRemoveSkillId(event, skill_id) {
        if (event.target.checked) {
            // after click it will change to unchecked so remove from the array
            this.selectedSkills = this.selectedSkills.filter(item => item !== skill_id);
        } else {
            // after click it will change to checked so add to the array
            if (!this.selectedSkills.includes(skill_id)) {
                this.selectedSkills.push(skill_id);
            }

        }

        //console.log(this.selectedSkills);
    }

    setSkillsList() {
        // console.log('setting skills list');


        this.classificationService.skillsList = this.selectedSkills;
    }


    onBackClick() {
        this.location.back();
    }
}
