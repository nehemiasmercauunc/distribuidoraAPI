using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Lista
{
    public int ListaId { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Descripcion { get; set; }

    public bool RecargoGeneral { get; set; }

    public decimal? RecargoImporte { get; set; }

    public DateTime Fecha { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<PrecioLista> PrecioLista { get; } = new List<PrecioLista>();

    public virtual ICollection<VentaDetalle> VentaDetalle { get; } = new List<VentaDetalle>();
}
