import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.scss']
})
export class MenuComponent implements OnInit {
    @Input() items: any[] = [];
    @Output() searchCompleted = new EventEmitter();

  constructor() { }

  ngOnInit() {
  }

    handleSearch(buttonType: string) {
        const searchText = buttonType;


        // return empty array if there are no items
        if (!this.items) {
            return this.searchCompleted.emit([]);
        }
        //
        if (!searchText || buttonType === '') {
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
