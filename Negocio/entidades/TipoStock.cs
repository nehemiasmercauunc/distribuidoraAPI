using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class TipoStock
{
    public int TipoStockId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<StockDeposito> StockDeposito { get; } = new List<StockDeposito>();
}
