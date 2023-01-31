using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Dolar
{
    public int DolarId { get; set; }

    public decimal Precio { get; set; }

    public DateTime? Fecha { get; set; }
}
