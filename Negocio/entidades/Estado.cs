using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Estado
{
    public int EstadoId { get; set; }

    public string? Nombre { get; set; }

    public string? Descripcion { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Venta> Venta { get; } = new List<Venta>();
}
