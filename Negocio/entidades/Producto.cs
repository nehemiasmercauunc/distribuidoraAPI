using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Producto
{
    public int ProductoId { get; set; }

    public int TipoProductoId { get; set; }

    public int TipoDuracionId { get; set; }

    public int MarcaId { get; set; }

    public string Nombre { get; set; } = null!;

    public decimal? PrecioCosto { get; set; }

    public DateTime FechaAlta { get; set; }

    public DateTime? FechaModificacion { get; set; }

    public int? Minimo { get; set; }

    public string? Codigo { get; set; }

    public bool? Activo { get; set; }

    public int? ProveedorId { get; set; }

    public virtual ICollection<ComboProducto> ComboProducto { get; } = new List<ComboProducto>();

    public virtual Marca Marca { get; set; } = null!;

    public virtual ICollection<NotaCreditoDetalle> NotaCreditoDetalle { get; } = new List<NotaCreditoDetalle>();

    public virtual ICollection<PrecioLista> PrecioLista { get; } = new List<PrecioLista>();

    public virtual Proveedor? Proveedor { get; set; }

    public virtual ICollection<StockDeposito> StockDeposito { get; } = new List<StockDeposito>();

    public virtual TipoDuracion TipoDuracion { get; set; } = null!;

    public virtual TipoProducto TipoProducto { get; set; } = null!;

    public virtual ICollection<VentaDetalle> VentaDetalle { get; } = new List<VentaDetalle>();
}
