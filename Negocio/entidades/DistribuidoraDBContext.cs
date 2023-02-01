using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace distribuidoraAPI.Negocio.entidades;

public partial class DistribuidoraDBContext : DbContext
{
    public DistribuidoraDBContext()
    {
    }

    public DistribuidoraDBContext(DbContextOptions<DistribuidoraDBContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ActualizacionStock> ActualizacionStock { get; set; }

    public virtual DbSet<Anio> Anio { get; set; }

    public virtual DbSet<Arqueo> Arqueo { get; set; }

    public virtual DbSet<ArqueoTipo> ArqueoTipo { get; set; }

    public virtual DbSet<ArqueoVenta> ArqueoVenta { get; set; }

    public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }

    public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }

    public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }

    public virtual DbSet<AspNetUserRoles> AspNetUserRoles { get; set; }

    public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }

    public virtual DbSet<Cliente> Cliente { get; set; }

    public virtual DbSet<Combo> Combo { get; set; }

    public virtual DbSet<ComboProducto> ComboProducto { get; set; }

    public virtual DbSet<CondicionIVA> CondicionIVA { get; set; }

    public virtual DbSet<Deposito> Deposito { get; set; }

    public virtual DbSet<Dolar> Dolar { get; set; }

    public virtual DbSet<Egreso> Egreso { get; set; }

    public virtual DbSet<Estado> Estado { get; set; }

    public virtual DbSet<Factura> Factura { get; set; }

    public virtual DbSet<Ingreso> Ingreso { get; set; }

    public virtual DbSet<Lista> Lista { get; set; }

    public virtual DbSet<Marca> Marca { get; set; }

    public virtual DbSet<Moneda> Moneda { get; set; }

    public virtual DbSet<NotaCredito> NotaCredito { get; set; }

    public virtual DbSet<NotaCreditoDetalle> NotaCreditoDetalle { get; set; }

    public virtual DbSet<Perfil> Perfil { get; set; }

    public virtual DbSet<PerfilUsuario> PerfilUsuario { get; set; }

    public virtual DbSet<PersonaTipo> PersonaTipo { get; set; }

    public virtual DbSet<PrecioLista> PrecioLista { get; set; }

    public virtual DbSet<Producto> Producto { get; set; }

    public virtual DbSet<Proveedor> Proveedor { get; set; }

    public virtual DbSet<Remito> Remito { get; set; }

    public virtual DbSet<StockDeposito> StockDeposito { get; set; }

    public virtual DbSet<Sucursal> Sucursal { get; set; }

    public virtual DbSet<SucursalUsuario> SucursalUsuario { get; set; }

    public virtual DbSet<Ticket> Ticket { get; set; }

    public virtual DbSet<TipoCobro> TipoCobro { get; set; }

    public virtual DbSet<TipoDuracion> TipoDuracion { get; set; }

    public virtual DbSet<TipoProducto> TipoProducto { get; set; }

    public virtual DbSet<TipoStock> TipoStock { get; set; }

    public virtual DbSet<TipoVenta> TipoVenta { get; set; }

    public virtual DbSet<Transportista> Transportista { get; set; }

    public virtual DbSet<UsuarioReferencia> UsuarioReferencia { get; set; }

    public virtual DbSet<Venta> Venta { get; set; }

    public virtual DbSet<VentaDetalle> VentaDetalle { get; set; }

    public virtual DbSet<__MigrationHistory> __MigrationHistory { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        /*=> optionsBuilder.UseSqlServer("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=DistribuidoraDB;Data Source=localhost;Encrypt=False");*/
        => optionsBuilder.UseSqlServer("Server=.\\SQLExpress;Database=DistribuidoraDB;Trusted_Connection=True;MultipleActiveResultSets=true;Trust Server Certificate=true");
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.UseCollation("Modern_Spanish_CI_AS");

        modelBuilder.Entity<ActualizacionStock>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(5000)
                .IsUnicode(false);
            entity.Property(e => e.Fecha).HasColumnType("date");
            entity.Property(e => e.Hora)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.UsuarioReferencia).WithMany(p => p.ActualizacionStock)
                .HasForeignKey(d => d.UsuarioReferenciaId)
                .HasConstraintName("FK_ActualizacionStock_UsuarioReferencia");
        });

        modelBuilder.Entity<Anio>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Arqueo>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Agregado).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Faltante).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.FechaFin).HasColumnType("date");
            entity.Property(e => e.FechaInicio).HasColumnType("date");
            entity.Property(e => e.Finalizado).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.HoraFin)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.HoraInicio)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Iniciado).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Observaciones)
                .HasMaxLength(5000)
                .IsUnicode(false);
            entity.Property(e => e.Retirado).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Sobrante).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Total).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.TotalEfectivo).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.ArqueoTipo).WithMany(p => p.Arqueo)
                .HasForeignKey(d => d.ArqueoTipoId)
                .HasConstraintName("FK_Arqueo_ArqueoTipo");
        });

        modelBuilder.Entity<ArqueoTipo>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<ArqueoVenta>(entity =>
        {
            entity.HasKey(e => e.ArqueoVenta1);

            entity.Property(e => e.ArqueoVenta1).HasColumnName("ArqueoVenta");
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");

            entity.HasOne(d => d.Arqueo).WithMany(p => p.ArqueoVenta)
                .HasForeignKey(d => d.ArqueoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ArqueoVenta_Arqueo");

            entity.HasOne(d => d.Venta).WithMany(p => p.ArqueoVenta)
                .HasForeignKey(d => d.VentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ArqueoVenta_Venta");
        });

        modelBuilder.Entity<AspNetRoles>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_dbo.AspNetRoles");

            entity.HasIndex(e => e.Name, "RoleNameIndex").IsUnique();

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.Name).HasMaxLength(256);
        });

        modelBuilder.Entity<AspNetUserClaims>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_dbo.AspNetUserClaims");

            entity.HasIndex(e => e.UserId, "IX_UserId");

            entity.Property(e => e.UserId).HasMaxLength(128);

            entity.HasOne(d => d.User).WithMany(p => p.AspNetUserClaims)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId");
        });

        modelBuilder.Entity<AspNetUserLogins>(entity =>
        {
            entity.HasKey(e => new { e.LoginProvider, e.ProviderKey, e.UserId }).HasName("PK_dbo.AspNetUserLogins");

            entity.HasIndex(e => e.UserId, "IX_UserId");

            entity.Property(e => e.LoginProvider).HasMaxLength(128);
            entity.Property(e => e.ProviderKey).HasMaxLength(128);
            entity.Property(e => e.UserId).HasMaxLength(128);

            entity.HasOne(d => d.User).WithMany(p => p.AspNetUserLogins)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId");
        });

        modelBuilder.Entity<AspNetUserRoles>(entity =>
        {
            entity.HasKey(e => new { e.UserId, e.RoleId }).HasName("PK_dbo.AspNetUserRoles");

            entity.HasIndex(e => e.RoleId, "IX_RoleId");

            entity.HasIndex(e => e.UserId, "IX_UserId");

            entity.Property(e => e.UserId).HasMaxLength(128);
            entity.Property(e => e.RoleId).HasMaxLength(128);

            entity.HasOne(d => d.Role).WithMany(p => p.AspNetUserRoles)
                .HasForeignKey(d => d.RoleId)
                .HasConstraintName("FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId");
        });

        modelBuilder.Entity<AspNetUsers>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_dbo.AspNetUsers");

            entity.HasIndex(e => e.UserName, "UserNameIndex").IsUnique();

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.Email).HasMaxLength(256);
            entity.Property(e => e.LockoutEndDateUtc).HasColumnType("datetime");
            entity.Property(e => e.UserName).HasMaxLength(256);

            entity.HasOne(d => d.Perfil).WithMany(p => p.AspNetUsers)
                .HasForeignKey(d => d.PerfilId)
                .HasConstraintName("FK_AspNetUsers_Perfil");

            entity.HasOne(d => d.Sucursal).WithMany(p => p.AspNetUsers)
                .HasForeignKey(d => d.SucursalId)
                .HasConstraintName("FK_AspNetUsers_Sucursal");

            entity.HasOne(d => d.Usuario).WithMany(p => p.AspNetUsers)
                .HasForeignKey(d => d.UsuarioId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_AspNetUsers_UsuarioReferencia");
        });

        modelBuilder.Entity<Cliente>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.CUIT)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Direccion)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.RazonSocial)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Telefono)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.CondicionIVA).WithMany(p => p.Cliente)
                .HasForeignKey(d => d.CondicionIVAId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Cliente_CondicionIVA");

            entity.HasOne(d => d.PersonaTipo).WithMany(p => p.Cliente)
                .HasForeignKey(d => d.PersonaTipoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Cliente_PersonaTipo");
        });

        modelBuilder.Entity<Combo>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Codigo)
                .HasMaxLength(2000)
                .IsUnicode(false);
            entity.Property(e => e.Descripcion).IsUnicode(false);
            entity.Property(e => e.Descuento).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.FechaModificacion).HasColumnType("datetime");
            entity.Property(e => e.Nombre)
                .HasMaxLength(1000)
                .IsUnicode(false);
            entity.Property(e => e.PrecioCosto).HasColumnType("decimal(18, 2)");
        });

        modelBuilder.Entity<ComboProducto>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Fecha).HasColumnType("datetime");

            entity.HasOne(d => d.Combo).WithMany(p => p.ComboProducto)
                .HasForeignKey(d => d.ComboId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ComboProducto_Combo");

            entity.HasOne(d => d.Producto).WithMany(p => p.ComboProducto)
                .HasForeignKey(d => d.ProductoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ComboProducto_Producto");
        });

        modelBuilder.Entity<CondicionIVA>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Deposito>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Direccion)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Sucursal).WithMany(p => p.Deposito)
                .HasForeignKey(d => d.SucursalId)
                .HasConstraintName("FK_Deposito_Sucursal");
        });

        modelBuilder.Entity<Dolar>(entity =>
        {
            entity.Property(e => e.Fecha).HasColumnType("datetime");
            entity.Property(e => e.Precio).HasColumnType("decimal(18, 2)");
        });

        modelBuilder.Entity<Egreso>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Monto).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Motivo)
                .HasMaxLength(5000)
                .IsUnicode(false);

            entity.HasOne(d => d.Arqueo).WithMany(p => p.Egreso)
                .HasForeignKey(d => d.ArqueoId)
                .HasConstraintName("FK_Egreso_Arqueo");
        });

        modelBuilder.Entity<Estado>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Factura>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.FechaCreacion).HasColumnType("datetime");
            entity.Property(e => e.Realizada).HasDefaultValueSql("((0))");
            entity.Property(e => e.RespuestaAPI).IsUnicode(false);
            entity.Property(e => e.iFacturaId)
                .HasMaxLength(1000)
                .IsUnicode(false);

            entity.HasOne(d => d.Venta).WithMany(p => p.Factura)
                .HasForeignKey(d => d.VentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Factura_Venta");
        });

        modelBuilder.Entity<Ingreso>(entity =>
        {
            entity.Property(e => e.Monto).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Motivo)
                .HasMaxLength(5000)
                .IsUnicode(false);

            entity.HasOne(d => d.Arqueo).WithMany(p => p.Ingreso)
                .HasForeignKey(d => d.ArqueoId)
                .HasConstraintName("FK_Ingreso_Arqueo");
        });

        modelBuilder.Entity<Lista>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(5000)
                .IsUnicode(false);
            entity.Property(e => e.Fecha).HasColumnType("datetime");
            entity.Property(e => e.Nombre)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.RecargoImporte).HasColumnType("decimal(18, 2)");
        });

        modelBuilder.Entity<Marca>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Moneda>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<NotaCredito>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Destinatario)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Fecha).HasColumnType("datetime");
            entity.Property(e => e.Observaciones).IsUnicode(false);
            entity.Property(e => e.Total).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Cliente).WithMany(p => p.NotaCredito)
                .HasForeignKey(d => d.ClienteId)
                .HasConstraintName("FK_NotaCredito_Cliente");

            entity.HasOne(d => d.Remito).WithMany(p => p.NotaCredito)
                .HasForeignKey(d => d.RemitoId)
                .HasConstraintName("FK_NotaCredito_Remito");

            entity.HasOne(d => d.Usuario).WithMany(p => p.NotaCredito)
                .HasForeignKey(d => d.UsuarioId)
                .HasConstraintName("FK_NotaCredito_UsuarioReferencia");

            entity.HasOne(d => d.Venta).WithMany(p => p.NotaCredito)
                .HasForeignKey(d => d.VentaId)
                .HasConstraintName("FK_NotaCredito_Venta");
        });

        modelBuilder.Entity<NotaCreditoDetalle>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Monto).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Combo).WithMany(p => p.NotaCreditoDetalle)
                .HasForeignKey(d => d.ComboId)
                .HasConstraintName("FK_NotaCreditoDetalle_Combo");

            entity.HasOne(d => d.NotaCredito).WithMany(p => p.NotaCreditoDetalle)
                .HasForeignKey(d => d.NotaCreditoId)
                .HasConstraintName("FK_NotaCreditoDetalle_NotaCredito");

            entity.HasOne(d => d.Producto).WithMany(p => p.NotaCreditoDetalle)
                .HasForeignKey(d => d.ProductoId)
                .HasConstraintName("FK_NotaCreditoDetalle_Producto");
        });

        modelBuilder.Entity<Perfil>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<PerfilUsuario>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");

            entity.HasOne(d => d.Perfil).WithMany(p => p.PerfilUsuario)
                .HasForeignKey(d => d.PerfilId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PerfilUsuario_Perfil");

            entity.HasOne(d => d.Usuario).WithMany(p => p.PerfilUsuario)
                .HasForeignKey(d => d.UsuarioId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PerfilUsuario_UsuarioReferencia");
        });

        modelBuilder.Entity<PersonaTipo>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<PrecioLista>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Cargado)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Fecha).HasColumnType("datetime");
            entity.Property(e => e.Precio).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.PrecioAnterior).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Combo).WithMany(p => p.PrecioLista)
                .HasForeignKey(d => d.ComboId)
                .HasConstraintName("FK_PrecioLista_Combo");

            entity.HasOne(d => d.Lista).WithMany(p => p.PrecioLista)
                .HasForeignKey(d => d.ListaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PrecioLista_Lista");

            entity.HasOne(d => d.Moneda).WithMany(p => p.PrecioLista)
                .HasForeignKey(d => d.MonedaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PrecioLista_Moneda");

            entity.HasOne(d => d.Producto).WithMany(p => p.PrecioLista)
                .HasForeignKey(d => d.ProductoId)
                .HasConstraintName("FK_PrecioLista_Producto");
        });

        modelBuilder.Entity<Producto>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Codigo)
                .HasMaxLength(2000)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.FechaModificacion).HasColumnType("datetime");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PrecioCosto).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Marca).WithMany(p => p.Producto)
                .HasForeignKey(d => d.MarcaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Producto_Marca");

            entity.HasOne(d => d.Proveedor).WithMany(p => p.Producto)
                .HasForeignKey(d => d.ProveedorId)
                .HasConstraintName("FK_Producto_Proveedor");

            entity.HasOne(d => d.TipoDuracion).WithMany(p => p.Producto)
                .HasForeignKey(d => d.TipoDuracionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Producto_TipoDuracion");

            entity.HasOne(d => d.TipoProducto).WithMany(p => p.Producto)
                .HasForeignKey(d => d.TipoProductoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Producto_TipoProducto");
        });

        modelBuilder.Entity<Proveedor>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Direccion)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.FechaCreacion).HasColumnType("datetime");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Remito>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.CUIT)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Domicilio)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.Fecha)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaCreacion).HasColumnType("datetime");
            entity.Property(e => e.Observaciones).IsUnicode(false);

            entity.HasOne(d => d.Cliente).WithMany(p => p.Remito)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Remito_Cliente");

            entity.HasOne(d => d.Transportista).WithMany(p => p.Remito)
                .HasForeignKey(d => d.TransportistaId)
                .HasConstraintName("FK_Remito_Transportista");

            entity.HasOne(d => d.Usuario).WithMany(p => p.Remito)
                .HasForeignKey(d => d.UsuarioId)
                .HasConstraintName("FK_Remito_UsuarioReferencia");

            entity.HasOne(d => d.Venta).WithMany(p => p.Remito)
                .HasForeignKey(d => d.VentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Remito_Venta");
        });

        modelBuilder.Entity<StockDeposito>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Cantidad).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.CantidadUsada).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.FechaActualizacion).HasColumnType("datetime");

            entity.HasOne(d => d.Combo).WithMany(p => p.StockDeposito)
                .HasForeignKey(d => d.ComboId)
                .HasConstraintName("FK_StockDeposito_Combo");

            entity.HasOne(d => d.Deposito).WithMany(p => p.StockDeposito)
                .HasForeignKey(d => d.DepositoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDeposito_Deposito");

            entity.HasOne(d => d.Producto).WithMany(p => p.StockDeposito)
                .HasForeignKey(d => d.ProductoId)
                .HasConstraintName("FK_StockDeposito_Producto");

            entity.HasOne(d => d.TipoStock).WithMany(p => p.StockDeposito)
                .HasForeignKey(d => d.TipoStockId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDeposito_TipoStock");
        });

        modelBuilder.Entity<Sucursal>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Direccion)
                .HasMaxLength(5000)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(500)
                .IsUnicode(false);
        });

        modelBuilder.Entity<SucursalUsuario>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");

            entity.HasOne(d => d.Sucursal).WithMany(p => p.SucursalUsuario)
                .HasForeignKey(d => d.SucursalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_SucursalUsuario_Sucursal");

            entity.HasOne(d => d.Usuario).WithMany(p => p.SucursalUsuario)
                .HasForeignKey(d => d.UsuarioId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_SucursalUsuario_UsuarioReferencia");
        });

        modelBuilder.Entity<Ticket>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Codigo)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Fecha).HasColumnType("datetime");

            entity.HasOne(d => d.Cliente).WithMany(p => p.Ticket)
                .HasForeignKey(d => d.ClienteId)
                .HasConstraintName("FK_Ticket_Cliente");

            entity.HasOne(d => d.Venta).WithMany(p => p.Ticket)
                .HasForeignKey(d => d.VentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Ticket_Venta");
        });

        modelBuilder.Entity<TipoCobro>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TipoDuracion>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TipoProducto>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TipoStock>(entity =>
        {
            entity.Property(e => e.Activo).HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TipoVenta>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Transportista>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Apellido)
                .HasMaxLength(500)
                .IsUnicode(false);
            entity.Property(e => e.FechaUltimoTransporte).HasColumnType("datetime");
            entity.Property(e => e.MontoAcumulado).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Nombre)
                .HasMaxLength(500)
                .IsUnicode(false);
        });

        modelBuilder.Entity<UsuarioReferencia>(entity =>
        {
            entity.HasKey(e => e.UsuarioRefId);

            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.AspNetUsersId).HasMaxLength(128);
        });

        modelBuilder.Entity<Venta>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.CostoEnvio).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Descuento).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.DireccionEnvio)
                .HasMaxLength(5000)
                .IsUnicode(false);
            entity.Property(e => e.Fecha).HasColumnType("datetime");
            entity.Property(e => e.FechaModificacion).HasColumnType("datetime");
            entity.Property(e => e.Final).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.NotaCreditoMonto).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Observaciones).IsUnicode(false);
            entity.Property(e => e.Promos).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Recargo).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Total).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Arqueo).WithMany(p => p.Venta)
                .HasForeignKey(d => d.ArqueoId)
                .HasConstraintName("FK_Venta_Arqueo");

            entity.HasOne(d => d.Cliente).WithMany(p => p.Venta)
                .HasForeignKey(d => d.ClienteId)
                .HasConstraintName("FK_Venta_Cliente");

            entity.HasOne(d => d.Estado).WithMany(p => p.Venta)
                .HasForeignKey(d => d.EstadoId)
                .HasConstraintName("FK_Venta_Estado");

            entity.HasOne(d => d.Preventista).WithMany(p => p.VentaPreventista)
                .HasForeignKey(d => d.PreventistaId)
                .HasConstraintName("FK_Venta_UsuarioReferencia1");

            entity.HasOne(d => d.Sucursal).WithMany(p => p.Venta)
                .HasForeignKey(d => d.SucursalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Venta_Sucursal");

            entity.HasOne(d => d.TipoCobro).WithMany(p => p.Venta)
                .HasForeignKey(d => d.TipoCobroId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Venta_TipoCobro");

            entity.HasOne(d => d.TipoVenta).WithMany(p => p.Venta)
                .HasForeignKey(d => d.TipoVentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Venta_TipoVenta");

            entity.HasOne(d => d.Usuario).WithMany(p => p.VentaUsuario)
                .HasForeignKey(d => d.UsuarioId)
                .HasConstraintName("FK_Venta_UsuarioReferencia");
        });

        modelBuilder.Entity<VentaDetalle>(entity =>
        {
            entity.Property(e => e.Activo)
                .IsRequired()
                .HasDefaultValueSql("((1))");
            entity.Property(e => e.Cantidad).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Precio)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Combo).WithMany(p => p.VentaDetalle)
                .HasForeignKey(d => d.ComboId)
                .HasConstraintName("FK_VentaDetalle_Combo");

            entity.HasOne(d => d.Lista).WithMany(p => p.VentaDetalle)
                .HasForeignKey(d => d.ListaId)
                .HasConstraintName("FK_VentaDetalle_Lista");

            entity.HasOne(d => d.Moneda).WithMany(p => p.VentaDetalle)
                .HasForeignKey(d => d.MonedaId)
                .HasConstraintName("FK_VentaDetalle_Moneda");

            entity.HasOne(d => d.Producto).WithMany(p => p.VentaDetalle)
                .HasForeignKey(d => d.ProductoId)
                .HasConstraintName("FK_VentaDetalle_Producto");

            entity.HasOne(d => d.Venta).WithMany(p => p.VentaDetalle)
                .HasForeignKey(d => d.VentaId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_VentaDetalle_Venta");
        });

        modelBuilder.Entity<__MigrationHistory>(entity =>
        {
            entity.HasKey(e => new { e.MigrationId, e.ContextKey }).HasName("PK_dbo.__MigrationHistory");

            entity.Property(e => e.MigrationId).HasMaxLength(150);
            entity.Property(e => e.ContextKey).HasMaxLength(300);
            entity.Property(e => e.ProductVersion).HasMaxLength(32);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
