using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Factura
{
    public int FacturaId { get; set; }

    public int VentaId { get; set; }

    public string? iFacturaId { get; set; }

    public string? RespuestaAPI { get; set; }

    public DateTime? FechaCreacion { get; set; }

    public bool? Activo { get; set; }

    public bool? Realizada { get; set; }

    public virtual Venta Venta { get; set; } = null!;
}
