using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class ComboProducto
{
    public int ComboProductoId { get; set; }

    public int ComboId { get; set; }

    public int ProductoId { get; set; }

    public DateTime? Fecha { get; set; }

    public bool? Activo { get; set; }

    public virtual Combo Combo { get; set; } = null!;

    public virtual Producto Producto { get; set; } = null!;
}
