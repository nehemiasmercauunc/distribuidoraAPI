using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class UsuarioReferencia
{
    public int UsuarioRefId { get; set; }

    public string AspNetUsersId { get; set; } = null!;

    public bool? Activo { get; set; }

    public virtual ICollection<ActualizacionStock> ActualizacionStock { get; } = new List<ActualizacionStock>();

    public virtual ICollection<AspNetUsers> AspNetUsers { get; } = new List<AspNetUsers>();

    public virtual ICollection<NotaCredito> NotaCredito { get; } = new List<NotaCredito>();

    public virtual ICollection<PerfilUsuario> PerfilUsuario { get; } = new List<PerfilUsuario>();

    public virtual ICollection<Remito> Remito { get; } = new List<Remito>();

    public virtual ICollection<SucursalUsuario> SucursalUsuario { get; } = new List<SucursalUsuario>();

    public virtual ICollection<Venta> VentaPreventista { get; } = new List<Venta>();

    public virtual ICollection<Venta> VentaUsuario { get; } = new List<Venta>();
}
