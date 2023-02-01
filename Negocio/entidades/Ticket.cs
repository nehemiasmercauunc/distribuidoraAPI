using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Ticket
{
    public int TicketId { get; set; }

    public int VentaId { get; set; }

    public int? ClienteId { get; set; }

    public DateTime? Fecha { get; set; }

    public string? Codigo { get; set; }

    public bool? Activo { get; set; }

    public virtual Cliente? Cliente { get; set; }

    public virtual Venta Venta { get; set; } = null!;
}
