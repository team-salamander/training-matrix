import {Component, OnInit} from '@angular/core';
import {ClassificationService} from '../../shared/services/classification.service';
import {map, toArray} from 'rxjs/operators';
import {PositionDeck} from '../../shared/models/position';



@Component({
    selector: 'app-position',
    templateUrl: 'position-deck.page.html',
    styleUrls: ['position-deck.page.scss'],
})
export class PositionDeckPage implements OnInit {

    positionDeck: PositionDeck[] = [];
    positions: PositionDeck[] = [];
    copyOfPositions: PositionDeck[] = [];

    constructor(private classificationService: ClassificationService) {
    }

    ngOnInit() {
        this.classificationService.getAllPositions().pipe(
            map((position: PositionDeck[]) => {
                this.positionDeck = position;

                this.positions = Object.keys(this.positionDeck)
                    .map(i => this.positionDeck[i]);

                this.copyOfPositions = Array.from(this.positions);
            })
        )
            .subscribe();
    }


    generateUrl(positionId: number): string {
        return `/position/${positionId}`;
    }


    filterPositions(positions: PositionDeck[]) {
        this.positions = positions;
    }
}
