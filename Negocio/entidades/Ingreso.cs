using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Ingreso
{
    public int IngresoId { get; set; }

    public decimal Monto { get; set; }

    public int? ArqueoId { get; set; }

    public string? Motivo { get; set; }

    public bool Activo { get; set; }

    public virtual Arqueo? Arqueo { get; set; }
}
