using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class TipoVenta
{
    public int TipoVentaId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Venta> Venta { get; } = new List<Venta>();
}
