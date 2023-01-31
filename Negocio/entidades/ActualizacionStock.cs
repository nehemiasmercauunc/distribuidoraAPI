using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class ActualizacionStock
{
    public int ActualizacionStockId { get; set; }

    public string? Descripcion { get; set; }

    public DateTime? Fecha { get; set; }

    public string? Hora { get; set; }

    public int? UsuarioReferenciaId { get; set; }

    public bool? Activo { get; set; }

    public virtual UsuarioReferencia? UsuarioReferencia { get; set; }
}
