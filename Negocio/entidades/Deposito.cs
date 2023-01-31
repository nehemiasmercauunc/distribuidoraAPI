using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Deposito
{
    public int DepositoId { get; set; }

    public string? Nombre { get; set; }

    public int? SucursalId { get; set; }

    public string? Direccion { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<StockDeposito> StockDeposito { get; } = new List<StockDeposito>();

    public virtual Sucursal? Sucursal { get; set; }
}
