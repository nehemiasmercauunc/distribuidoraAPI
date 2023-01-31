using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class SucursalUsuario
{
    public int SucursalUsuarioId { get; set; }

    public int SucursalId { get; set; }

    public int UsuarioId { get; set; }

    public bool? Activo { get; set; }

    public virtual Sucursal Sucursal { get; set; } = null!;

    public virtual UsuarioReferencia Usuario { get; set; } = null!;
}
