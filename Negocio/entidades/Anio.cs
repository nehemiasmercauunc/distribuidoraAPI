using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Anio
{
    public int AnioId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }
}
