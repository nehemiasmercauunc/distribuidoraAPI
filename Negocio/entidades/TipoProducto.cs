using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class TipoProducto
{
    public int TipoProductoId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<Producto> Producto { get; } = new List<Producto>();
}
