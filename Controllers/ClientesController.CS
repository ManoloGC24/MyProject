//using Microsoft.AspNetCore.Mvc;

using Microsoft.AspNetCore.Mvc;
using MyProject.Data;
using MyProject.Models;
using System.Data;
using System.Diagnostics;

namespace MyProject.Controllers
// Controllers/ClientesController.cs
[ApiController]
[Route("api/[controller]")]
[DebuggerDisplay($"{{{nameof(GetDebuggerDisplay)}(),nq}}")]
public class ClientesController : ControllerBase
{
    private readonly ApplicationDbContext _context;

    public ClientesController(ApplicationDbContext context)
    {
        _context = context;
    }

    [HttpGet("sp")]
    public async Task<ActionResult<PaginatedResponse<Cliente>>> GetClientesSP(
        [FromQuery] int pageNumber = 1,
        [FromQuery] int pageSize = 10)
    {
        var parameters = new[]
        {
            new SqlParameter("@PageNumber", pageNumber),
            new SqlParameter("@PageSize", pageSize),
            new SqlParameter("@TotalRegistros", SqlDbType.Int) { Direction = ParameterDirection.Output }
        };

        var clientes = await _context.Clientes
            .FromSqlRaw("EXEC SP_GetClientesPaginados @PageNumber, @PageSize, @TotalRegistros OUTPUT",
                parameters)
            .ToListAsync();

        var totalItems = (int)parameters[2].Value;

        return Ok(new PaginatedResponse<Cliente>
        {
            Items = clientes,
            TotalItems = totalItems,
            PageNumber = pageNumber,
            PageSize = pageSize
        });
    }

    [HttpGet("ef")]
    public async Task<ActionResult<PaginatedResponse<Cliente>>> GetClientesEF(
        [FromQuery] int pageNumber = 1,
        [FromQuery] int pageSize = 10)
    {
        var totalItems = await _context.Clientes.CountAsync();

        var clientes = await _context.Clientes
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            .ToListAsync();

        return Ok(new PaginatedResponse<Cliente>
        { [[_{ {{ CITATION{{{ _1{](https://github.com/xReedit/transac-1/tree/737b09f95ef78d372f89ba465940f986b20f81ef/src%2Fapp%2Fmodulo-mantenimiento%2Fcliente%2Fcliente-list%2Fcliente-list.component.ts)[_{{{CITATION{{{_2{](https://github.com/alexdaywid/academico-curso/tree/1af2cc35901d582775db8f2b50d49d4a3e93b17b/src%2Fmeii.Ui%2Fsrc%2Fapp%2Fpages%2Fcliente%2Fcliente-list%2Fcliente-list.component.ts)_{{{CITATION{{{_3{](https://github.com/adolfodelarosades/AngularYSpring5/tree/9f634302ebcf628d2d53ac0c2b6174b009e43126/Seccion03_ComponenteClientes.md)}private string GetDebuggerDisplay()
    {
        return ToString();
    }