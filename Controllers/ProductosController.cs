using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using distriApi.Negocio.entidades;
using Serilog;

namespace rrhhApi.Controllers
{
    [Route("api")]
    [Produces("application/json")]
    [ApiController]
    public class CandidatoController : ControllerBase
    {
        private readonly DistribuidoraDBContext _context;
        private readonly ILogger<CandidatoController> _logger;


        public CandidatoController(DistribuidoraDBContext context, ILogger<CandidatoController> logger)
        {
            _context = context;
            _logger = logger;
        }

        
        [HttpGet("productos")]
        public async Task<ActionResult<IEnumerable<Producto>>> GetProductos()
        {
            try
            {
                _logger.LogInformation("Método GET: por hacer la query");
                var list = _context.Producto.ToList();
                return list.ToArray();
            }
            catch (System.Exception ex)
            {
                Response.StatusCode = StatusCodes.Status500InternalServerError;
                return Content(ex.Message, "application/json");
                _logger.LogError("Método GET: error: " + ex.Message);
            }

        }

        [HttpGet("producto/{id}")]
        public async Task<ActionResult<Producto>> GetProducto(int id)
        {
            try
            {
                _logger.LogInformation("Método GET: obtener un producto");

                var Producto = await _context.Producto.FindAsync(id);

                if (Producto == null)
                {
                    return NotFound();
                }

                return Producto;
            }
            catch (System.Exception ex)
            {
                Response.StatusCode = StatusCodes.Status500InternalServerError;
                return Content(ex.Message, "application/json");
                _logger.LogError("Método GET: error: " + ex.Message);
            }

        }

        [HttpPut("producto/{id}")]
        public async Task<IActionResult> PutProducto(int id, Producto producto)
        {
            if (id != producto.ProductoId)
            {
                return BadRequest();
            }

            _context.Entry(producto).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CandidatoExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            Log.Information("Método PUT: actualiza un producto");
            return NoContent();
        }

        
        [HttpDelete("producto/{id}")]
        public async Task<IActionResult> DeleteProducto(int id)
        {
            if (_context.Producto == null)
            {
                return NotFound();
            }
            var producto = await _context.Producto.FindAsync(id);
            if (producto == null)
            {
                return NotFound();
            }
            producto.Activo = false;
            _context.Entry(producto).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            Log.Information("Método DELETE: elimina un producto");

            return NoContent();
        }

        private bool CandidatoExists(int id)
        {
            return (_context.Producto?.Any(e => e.ProductoId == id)).GetValueOrDefault();
        }


    }
}
