using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class NotaCredito
{
    public int NotaCreditoId { get; set; }

    public int? VentaId { get; set; }

    public int? ClienteId { get; set; }

    public string? Destinatario { get; set; }

    public DateTime? Fecha { get; set; }

    public decimal? Total { get; set; }

    public int? RemitoId { get; set; }

    public int? UsuarioId { get; set; }

    public bool? Activo { get; set; }

    public string? Observaciones { get; set; }

    public virtual Cliente? Cliente { get; set; }

    public virtual ICollection<NotaCreditoDetalle> NotaCreditoDetalle { get; } = new List<NotaCreditoDetalle>();

    public virtual Remito? Remito { get; set; }

    public virtual UsuarioReferencia? Usuario { get; set; }

    public virtual Venta? Venta { get; set; }
}
