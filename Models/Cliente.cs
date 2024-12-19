namespace MyProject.Models
{
  

// Models/Cliente.cs
public class Cliente
{
    public int Id { get; set; }
    public string Nombre { get; set; }
    public string? Telefono { get; set; }
    public string? Pais { get; set; }
}

public class PaginatedResponse<T>
{
    public List<T>? Items { get; set; }
    public int TotalItems { get; set; }
    public int PageNumber { get; set; }
    public int PageSize { get; set; }
}
}
