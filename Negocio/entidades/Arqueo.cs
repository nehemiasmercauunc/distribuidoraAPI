using System;
using System.Collections.Generic;

namespace distriApi.Negocio.entidades;

public partial class Arqueo
{
    public int ArqueoId { get; set; }

    public DateTime FechaInicio { get; set; }

    public DateTime? FechaFin { get; set; }

    public decimal? Total { get; set; }

    public decimal? Faltante { get; set; }

    public decimal? Sobrante { get; set; }

    public string? Observaciones { get; set; }

    public decimal? Agregado { get; set; }

    public decimal? Retirado { get; set; }

    public string HoraInicio { get; set; } = null!;

    public string? HoraFin { get; set; }

    public bool Abierto { get; set; }

    public decimal? Iniciado { get; set; }

    public decimal? Finalizado { get; set; }

    public decimal? TotalEfectivo { get; set; }

    public int? UsuarioInicioId { get; set; }

    public int? UsuarioFinalizoId { get; set; }

    public bool? Activo { get; set; }

    public int? ArqueoTipoId { get; set; }

    public virtual ArqueoTipo? ArqueoTipo { get; set; }

    public virtual ICollection<ArqueoVenta> ArqueoVenta { get; } = new List<ArqueoVenta>();

    public virtual ICollection<Egreso> Egreso { get; } = new List<Egreso>();

    public virtual ICollection<Ingreso> Ingreso { get; } = new List<Ingreso>();

    public virtual ICollection<Venta> Venta { get; } = new List<Venta>();
}
