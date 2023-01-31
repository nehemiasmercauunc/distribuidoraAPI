using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class StockDeposito
{
    public int StockDepositoId { get; set; }

    public int DepositoId { get; set; }

    public int TipoStockId { get; set; }

    public int? ProductoId { get; set; }

    public int? ComboId { get; set; }

    public decimal Cantidad { get; set; }

    public DateTime? FechaActualizacion { get; set; }

    public decimal? CantidadUsada { get; set; }

    public bool? Activo { get; set; }

    public virtual Combo? Combo { get; set; }

    public virtual Deposito Deposito { get; set; } = null!;

    public virtual Producto? Producto { get; set; }

    public virtual TipoStock TipoStock { get; set; } = null!;
}
