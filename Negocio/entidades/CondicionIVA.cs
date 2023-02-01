using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class CondicionIVA
{
    public int CondicionIVAId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Cliente> Cliente { get; } = new List<Cliente>();
}
