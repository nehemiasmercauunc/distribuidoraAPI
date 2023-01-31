using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class ArqueoTipo
{
    public int ArqueoTipoId { get; set; }

    public string Nombre { get; set; } = null!;

    public bool? Activo { get; set; }

    public virtual ICollection<Arqueo> Arqueo { get; } = new List<Arqueo>();
}
