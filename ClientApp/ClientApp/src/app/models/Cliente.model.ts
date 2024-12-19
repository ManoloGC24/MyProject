//namespace MyProject.ClientApp.ClientApp.src.app.models
export interface Cliente {
  id: number;
  nombre: string;
  telefono: string;
  pais: string;
}

export interface PaginatedResponse<T> {
  items: T[];
  totalItems: number;
  pageNumber: number;
  pageSize: number;
}
