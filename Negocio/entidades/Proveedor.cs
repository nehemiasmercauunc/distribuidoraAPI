using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Proveedor
{
    public int ProveedorId { get; set; }

    public string? Nombre { get; set; }

    public string? Direccion { get; set; }

    public DateTime? FechaCreacion { get; set; }

    public bool? Activo { get; set; }

    public long? Telefono { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<Producto> Producto { get; } = new List<Producto>();
}
