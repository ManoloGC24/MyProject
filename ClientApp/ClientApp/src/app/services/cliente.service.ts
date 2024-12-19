// services/cliente.service.ts
import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Cliente, PaginatedResponse } from '../models/Cliente.model';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {
  private readonly baseUrl = 'https://api.example.com/api';

  constructor(private http: HttpClient) { }

  getClientesStoreProcedure(pageNumber: number, pageSize: number): Observable<PaginatedResponse<Cliente>> {
    const params = new HttpParams()
      .set('pageNumber', pageNumber.toString())
      .set('pageSize', pageSize.toString());

    return this.http.get<PaginatedResponse<Cliente>>(`${this.baseUrl}/clientes/sp`, { params });
  }

  getClientesEF(pageNumber: number, pageSize: number): Observable<PaginatedResponse<Cliente>> {
    const params = new HttpParams()
      .set('pageNumber', pageNumber.toString())
      .set('pageSize', pageSize.toString());

    return this.http.get<PaginatedResponse<Cliente>>(`${this.baseUrl}/clientes/ef`, { params });
  }
}
