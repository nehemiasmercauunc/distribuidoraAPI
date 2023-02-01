using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class ArqueoVenta
{
    public int ArqueoVenta1 { get; set; }

    public int ArqueoId { get; set; }

    public int VentaId { get; set; }

    public bool? Activo { get; set; }

    public virtual Arqueo Arqueo { get; set; } = null!;

    public virtual Venta Venta { get; set; } = null!;
}
