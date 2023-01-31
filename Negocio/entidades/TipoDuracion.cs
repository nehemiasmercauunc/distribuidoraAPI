using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class TipoDuracion
{
    public int TipoDuracionId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Producto> Producto { get; } = new List<Producto>();
}
