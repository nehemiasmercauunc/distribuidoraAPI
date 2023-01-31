using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class VentaDetalle
{
    public int VentaDetalleId { get; set; }

    public int VentaId { get; set; }

    public int? ListaId { get; set; }

    public int? ProductoId { get; set; }

    public int? ComboId { get; set; }

    public decimal? Cantidad { get; set; }

    public string? Precio { get; set; }

    public int? MonedaId { get; set; }

    public bool? Activo { get; set; }

    public virtual Combo? Combo { get; set; }

    public virtual Lista? Lista { get; set; }

    public virtual Moneda? Moneda { get; set; }

    public virtual Producto? Producto { get; set; }

    public virtual Venta Venta { get; set; } = null!;
}
