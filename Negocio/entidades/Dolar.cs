using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Dolar
{
    public int DolarId { get; set; }

    public decimal Precio { get; set; }

    public DateTime? Fecha { get; set; }
}
