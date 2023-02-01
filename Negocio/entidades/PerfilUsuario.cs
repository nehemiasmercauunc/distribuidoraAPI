using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class PerfilUsuario
{
    public int PerfilUsuarioId { get; set; }

    public int PerfilId { get; set; }

    public int UsuarioId { get; set; }

    public bool? Activo { get; set; }

    public virtual Perfil Perfil { get; set; } = null!;

    public virtual UsuarioReferencia Usuario { get; set; } = null!;
}
