using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Moneda
{
    public int MonedaId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<PrecioLista> PrecioLista { get; } = new List<PrecioLista>();

    public virtual ICollection<VentaDetalle> VentaDetalle { get; } = new List<VentaDetalle>();
}
