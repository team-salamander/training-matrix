import {Component, Input, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
    selector: 'app-position-list',
    templateUrl: './position-list.component.html',
    styleUrls: ['./position-list.component.scss']
})
export class PositionListComponent implements OnInit {

    @Input() items: string;
    @Input() navigateTo: any;

    constructor(private router: Router, private route: ActivatedRoute) {
    }

    ngOnInit() {}
}
