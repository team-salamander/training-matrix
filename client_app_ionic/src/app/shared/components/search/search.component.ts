import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';

@Component({
    selector: 'app-search',
    templateUrl: './search.component.html',
    styleUrls: ['./search.component.scss']
})
export class SearchComponent implements OnInit {
    @Input() items: any[] = [];

    @Output() searchCompleted = new EventEmitter();

    constructor() {
    }

    ngOnInit() {
    }

    handleSearch(event: any) {
        const searchText = event.target.value;


        // return empty array if there are no items
        if (!this.items) {
            return this.searchCompleted.emit([]);
        }
        //
        if (!searchText) {
            return this.searchCompleted.emit(this.items);
        }
        //
        const filteredItems = this.items[0].filter((item) => {
            return item.title.toLowerCase().includes(searchText.toLowerCase());
        });

        const newItemList = [];
        newItemList.push(filteredItems);

        this.searchCompleted.emit(newItemList);

    }

}
