using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using distribuidoraAPI.Negocio.entidades;
using Serilog;
using distrbuidoraAPI.Models;

namespace distrbuidoraAPI.Controllers
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
        public async Task<ActionResult<ProductoModel>> GetProducto(int id)
        {
            try
            {
                _logger.LogInformation("Método GET: obtener un producto");

                var oProducto = await _context.Producto.Include(x => x.Proveedor).Include(x => x.Marca).Include(x => x.TipoProducto).Include(x => x.TipoDuracion).FirstOrDefaultAsync(x => x.ProductoId == id);

                ProductoModel oProductoViewModel = new ProductoModel();

                oProductoViewModel.ProductoId = oProducto.ProductoId;
                oProductoViewModel.TipoProductoId = oProducto.TipoProductoId;
                oProductoViewModel.TipoDuracionId = oProducto.TipoDuracionId;
                oProductoViewModel.MarcaId = oProducto.MarcaId;
                oProductoViewModel.Nombre = oProducto.Nombre;
                oProductoViewModel.PrecioCosto = (decimal)oProducto.PrecioCosto;
                oProductoViewModel.Minimo = (int)oProducto.Minimo;
                oProductoViewModel.Codigo = oProducto.Codigo;
                oProductoViewModel.ProveedorId = (int)oProducto.ProveedorId;

                if (oProducto == null)
                {
                    return NotFound();
                }

                return oProductoViewModel;
            }
            catch (System.Exception ex)
            {
                Response.StatusCode = StatusCodes.Status500InternalServerError;
                return Content(ex.Message, "application/json");
                _logger.LogError("Método GET: error: " + ex.Message);
            }

        }

        [HttpPost("producto")]
        public async Task<ActionResult> PostProducto(ProductoModel producto)
        {
            if (producto == null)
            {
                return BadRequest();
            }
            Log.Information(producto.Codigo);

            Producto oProducto = new Producto();
            oProducto.Nombre = producto.Nombre.ToUpper();
            oProducto.TipoDuracionId = producto.TipoDuracionId;
            oProducto.TipoProductoId = producto.TipoProductoId;
            oProducto.ProveedorId = producto.ProveedorId;
            oProducto.MarcaId = producto.MarcaId;
            oProducto.PrecioCosto = producto.PrecioCosto;
            oProducto.Minimo = producto.Minimo;
            oProducto.Codigo = producto.Codigo;
            int[] depositosDefault = new int[1] { 1 };
            producto.DepositosList = depositosDefault;
            oProducto.FechaAlta = DateTime.Now;
            oProducto.FechaModificacion = DateTime.Now;
            oProducto.Activo = true;

            _context.Producto.Add(oProducto);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (System.Exception)
            {
                throw;
            }

            Log.Information("Método POST: crea un producto");
            return Ok();
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
