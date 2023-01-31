using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Transportista
{
    public int TransportistaId { get; set; }

    public string? Nombre { get; set; }

    public string? Apellido { get; set; }

    public decimal? MontoAcumulado { get; set; }

    public DateTime? FechaUltimoTransporte { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Remito> Remito { get; } = new List<Remito>();
}
