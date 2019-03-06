import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss']
})
export class HomePage implements OnInit {
    private timer;

    constructor(private router: Router) {

    }

    ngOnInit() {
        this.splash(3000);
    }

    splash(time: number) {
        this.timer = setTimeout(() => {
            this.router.navigateByUrl('/position');
        }, time);
    }
}