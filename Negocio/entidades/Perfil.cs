using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Perfil
{
    public int PerfilId { get; set; }

    public string? Nombre { get; set; }

    public bool? Activo { get; set; }

    public virtual ICollection<AspNetUsers> AspNetUsers { get; } = new List<AspNetUsers>();

    public virtual ICollection<PerfilUsuario> PerfilUsuario { get; } = new List<PerfilUsuario>();
}
