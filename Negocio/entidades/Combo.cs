using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Combo
{
    public int ComboId { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Descripcion { get; set; }

    public DateTime? FechaAlta { get; set; }

    public decimal? PrecioCosto { get; set; }

    public DateTime? FechaModificacion { get; set; }

    public int? Minimo { get; set; }

    public decimal? Descuento { get; set; }

    public string? Codigo { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<ComboProducto> ComboProducto { get; } = new List<ComboProducto>();

    public virtual ICollection<NotaCreditoDetalle> NotaCreditoDetalle { get; } = new List<NotaCreditoDetalle>();

    public virtual ICollection<PrecioLista> PrecioLista { get; } = new List<PrecioLista>();

    public virtual ICollection<StockDeposito> StockDeposito { get; } = new List<StockDeposito>();

    public virtual ICollection<VentaDetalle> VentaDetalle { get; } = new List<VentaDetalle>();
}
