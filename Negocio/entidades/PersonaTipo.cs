using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class PersonaTipo
{
    public int PersonaTipoId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Cliente> Cliente { get; } = new List<Cliente>();
}
