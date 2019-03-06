import {Injectable} from '@angular/core';
import {Observable} from 'rxjs';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Position, PositionDeck} from '../models/position';
import {Config} from '../../../config';

@Injectable({
    providedIn: 'root'
})
export class ClassificationService {
    private readonly headers: HttpHeaders;
    private readonly srvPath = Config.serverUrl;

    skillsList: number[] = [];

    constructor(private http: HttpClient) {
        this.headers = new HttpHeaders({'Content-Type': 'application/json'});
    }

    public getAllPositions(): Observable<PositionDeck[]> {
        return this.http.get<PositionDeck[]>(this.srvPath + 'classification/positions',
            {headers: this.headers});
    }

    public getPositionData(positionId: number): Observable<Position[]> {
        return this.http.get<Position[]>(this.srvPath + 'classification/positions/' + positionId,
            {headers: this.headers});
    }

    public getPositionDataFilteredBySkills(positionId: number, skills): Observable<Position[]> {

        const skillList = JSON.stringify({'skill_ids': skills});

        const path = this.srvPath + 'classification/positions/' + positionId + '?params=' + skillList;

        return this.http.get<Position[]>(encodeURI(path),
            {headers: this.headers});
    }
}


