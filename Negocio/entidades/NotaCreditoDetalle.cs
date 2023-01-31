using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class NotaCreditoDetalle
{
    public int NotaCreditoDetalleId { get; set; }

    public int? NotaCreditoId { get; set; }

    public int? ProductoId { get; set; }

    public int? ComboId { get; set; }

    public int? Cantidad { get; set; }

    public decimal? Monto { get; set; }

    public bool? Activo { get; set; }

    public virtual Combo? Combo { get; set; }

    public virtual NotaCredito? NotaCredito { get; set; }

    public virtual Producto? Producto { get; set; }
}
