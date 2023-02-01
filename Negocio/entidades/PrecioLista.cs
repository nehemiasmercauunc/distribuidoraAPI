using System;
using System.Collections.Generic;

namespace distribuidoraAPI.Negocio.entidades;

public partial class PrecioLista
{
    public int PrecioListaId { get; set; }

    public int? ProductoId { get; set; }

    public int? ComboId { get; set; }

    public int ListaId { get; set; }

    public decimal? Precio { get; set; }

    public decimal? PrecioAnterior { get; set; }

    public DateTime Fecha { get; set; }

    public bool? Cargado { get; set; }

    public int MonedaId { get; set; }

    public bool? Activo { get; set; }

    public virtual Combo? Combo { get; set; }

    public virtual Lista Lista { get; set; } = null!;

    public virtual Moneda Moneda { get; set; } = null!;

    public virtual Producto? Producto { get; set; }
}
