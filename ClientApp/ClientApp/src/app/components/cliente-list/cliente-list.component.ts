// components/cliente-list/cliente-list.component.ts
import { Component, OnInit } from '@angular/core';
import { ClienteService } from '../../services/cliente.service';
import { Cliente } from '../../models/Cliente.model';

@Component({
  selector: 'app-cliente-list',
  templateUrl: './cliente-list.component.html',
  styleUrls: ['./cliente-list.component.css']
})
export class ClienteListComponent implements OnInit {
  clientes: Cliente[] = [];
  pageNumber = 1;
  pageSize = 10;
  totalItems = 0;
  loading = false;

  constructor(private clienteService: ClienteService) { }

  ngOnInit(): void {
    this.loadClientes();
  }

  loadClientes(useSP: boolean = true): void {
    this.loading = true;
    const request = useSP ?
      this.clienteService.getClientesStoreProcedure(this.pageNumber, this.pageSize) :
      this.clienteService.getClientesEF(this.pageNumber, this.pageSize);

    request.subscribe({
      next: (response) => {
        this.clientes = response.items;
        this.totalItems = response.totalItems;
        this.loading = false;
      },
      error: (error) => {
        console.error('Error cargando clientes:', error);
        this.loading = false;
      }
    });
  }

  onPageChange(page: number): void {
    this.pageNumber = page;
    this.loadClientes();
  }
}
