using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Remito
{
    public int RemitoId { get; set; }

    public int ClienteId { get; set; }

    public int VentaId { get; set; }

    public string Fecha { get; set; } = null!;

    public string? Domicilio { get; set; }

    public int? TransportistaId { get; set; }

    public string? CUIT { get; set; }

    public string? Observaciones { get; set; }

    public int? UsuarioId { get; set; }

    public DateTime FechaCreacion { get; set; }

    public bool? Activo { get; set; }

    public virtual Cliente Cliente { get; set; } = null!;

    public virtual ICollection<NotaCredito> NotaCredito { get; } = new List<NotaCredito>();

    public virtual Transportista? Transportista { get; set; }

    public virtual UsuarioReferencia? Usuario { get; set; }

    public virtual Venta Venta { get; set; } = null!;
}
