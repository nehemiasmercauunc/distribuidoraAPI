using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class Cliente
{
    public int ClienteId { get; set; }

    public string? RazonSocial { get; set; }

    public string? CUIT { get; set; }

    public string? Direccion { get; set; }

    public int CondicionIVAId { get; set; }

    public string? Telefono { get; set; }

    public int PersonaTipoId { get; set; }

    public DateTime? FechaAlta { get; set; }

    public string? Email { get; set; }

    public bool? Activo { get; set; }

    public virtual CondicionIVA CondicionIVA { get; set; } = null!;

    public virtual ICollection<NotaCredito> NotaCredito { get; } = new List<NotaCredito>();

    public virtual PersonaTipo PersonaTipo { get; set; } = null!;

    public virtual ICollection<Remito> Remito { get; } = new List<Remito>();

    public virtual ICollection<Ticket> Ticket { get; } = new List<Ticket>();

    public virtual ICollection<Venta> Venta { get; } = new List<Venta>();
}
