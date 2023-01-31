using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Venta
{
    public int VentaId { get; set; }

    public int TipoVentaId { get; set; }

    public int SucursalId { get; set; }

    public int? ClienteId { get; set; }

    public int TipoCobroId { get; set; }

    public decimal Total { get; set; }

    public decimal? Descuento { get; set; }

    public decimal? Final { get; set; }

    public DateTime Fecha { get; set; }

    public DateTime? FechaModificacion { get; set; }

    public string? Observaciones { get; set; }

    public string? DireccionEnvio { get; set; }

    public decimal? CostoEnvio { get; set; }

    public bool Pendiente { get; set; }

    public int? EstadoId { get; set; }

    public decimal? Recargo { get; set; }

    public int? ArqueoId { get; set; }

    public bool? Activo { get; set; }

    public int? UsuarioId { get; set; }

    public decimal? Promos { get; set; }

    public decimal? NotaCreditoMonto { get; set; }

    public int? PreventistaId { get; set; }

    public virtual Arqueo? Arqueo { get; set; }

    public virtual ICollection<ArqueoVenta> ArqueoVenta { get; } = new List<ArqueoVenta>();

    public virtual Cliente? Cliente { get; set; }

    public virtual Estado? Estado { get; set; }

    public virtual ICollection<Factura> Factura { get; } = new List<Factura>();

    public virtual ICollection<NotaCredito> NotaCredito { get; } = new List<NotaCredito>();

    public virtual UsuarioReferencia? Preventista { get; set; }

    public virtual ICollection<Remito> Remito { get; } = new List<Remito>();

    public virtual Sucursal Sucursal { get; set; } = null!;

    public virtual ICollection<Ticket> Ticket { get; } = new List<Ticket>();

    public virtual TipoCobro TipoCobro { get; set; } = null!;

    public virtual TipoVenta TipoVenta { get; set; } = null!;

    public virtual UsuarioReferencia? Usuario { get; set; }

    public virtual ICollection<VentaDetalle> VentaDetalle { get; } = new List<VentaDetalle>();
}
