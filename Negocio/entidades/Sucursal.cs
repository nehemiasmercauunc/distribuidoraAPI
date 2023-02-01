using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Sucursal
{
    public int SucursalId { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Direccion { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<AspNetUsers> AspNetUsers { get; } = new List<AspNetUsers>();

    public virtual ICollection<Deposito> Deposito { get; } = new List<Deposito>();

    public virtual ICollection<SucursalUsuario> SucursalUsuario { get; } = new List<SucursalUsuario>();

    public virtual ICollection<Venta> Venta { get; } = new List<Venta>();
}
