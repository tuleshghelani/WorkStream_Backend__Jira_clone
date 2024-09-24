import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import baseUrl from './helper';

@Injectable({
  providedIn: 'root'
})
export class LoginService {


  constructor(private http: HttpClient) { }


  public getTest() {
    return this.http.get(`${baseUrl}`);
  }
}
