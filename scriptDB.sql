USE [master]
GO
/****** Object:  Database [DistribuidoraDB]    Script Date: 31/01/2023 16:20:26 ******/
CREATE DATABASE [DistribuidoraDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ODAMuniDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DistribuidoraDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ODAMuniDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DistribuidoraDB_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DistribuidoraDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DistribuidoraDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DistribuidoraDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DistribuidoraDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DistribuidoraDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DistribuidoraDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DistribuidoraDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DistribuidoraDB] SET  MULTI_USER 
GO
ALTER DATABASE [DistribuidoraDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DistribuidoraDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DistribuidoraDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DistribuidoraDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DistribuidoraDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DistribuidoraDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DistribuidoraDB] SET QUERY_STORE = OFF
GO
USE [DistribuidoraDB]
GO
/****** Object:  User [IIS APPPOOL\ASP.NET v4.0]    Script Date: 31/01/2023 16:20:26 ******/
CREATE USER [IIS APPPOOL\ASP.NET v4.0] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [IIS APPPOOL\ASP.NET v4.0]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [IIS APPPOOL\ASP.NET v4.0]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActualizacionStock]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualizacionStock](
	[ActualizacionStockId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](5000) NULL,
	[Fecha] [date] NULL,
	[Hora] [varchar](50) NULL,
	[UsuarioReferenciaId] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_ActualizacionStock] PRIMARY KEY CLUSTERED 
(
	[ActualizacionStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anio]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anio](
	[AnioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Anio] PRIMARY KEY CLUSTERED 
(
	[AnioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arqueo]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arqueo](
	[ArqueoId] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[Total] [decimal](18, 2) NULL,
	[Faltante] [decimal](18, 2) NULL,
	[Sobrante] [decimal](18, 2) NULL,
	[Observaciones] [varchar](5000) NULL,
	[Agregado] [decimal](18, 2) NULL,
	[Retirado] [decimal](18, 2) NULL,
	[HoraInicio] [varchar](50) NOT NULL,
	[HoraFin] [varchar](50) NULL,
	[Abierto] [bit] NOT NULL,
	[Iniciado] [decimal](18, 2) NULL,
	[Finalizado] [decimal](18, 2) NULL,
	[TotalEfectivo] [decimal](18, 2) NULL,
	[UsuarioInicioId] [int] NULL,
	[UsuarioFinalizoId] [int] NULL,
	[Activo] [bit] NOT NULL,
	[ArqueoTipoId] [int] NULL,
 CONSTRAINT [PK_Arqueo] PRIMARY KEY CLUSTERED 
(
	[ArqueoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArqueoTipo]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArqueoTipo](
	[ArqueoTipoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ArqueoTipo] PRIMARY KEY CLUSTERED 
(
	[ArqueoTipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArqueoVenta]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArqueoVenta](
	[ArqueoVenta] [int] IDENTITY(1,1) NOT NULL,
	[ArqueoId] [int] NOT NULL,
	[VentaId] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ArqueoVenta] PRIMARY KEY CLUSTERED 
(
	[ArqueoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido] [nvarchar](max) NULL,
	[Dni] [nvarchar](max) NULL,
	[PerfilId] [int] NULL,
	[UsuarioId] [int] NOT NULL,
	[SucursalId] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](200) NULL,
	[CUIT] [varchar](100) NULL,
	[Direccion] [varchar](500) NULL,
	[CondicionIVAId] [int] NOT NULL,
	[Telefono] [varchar](50) NULL,
	[PersonaTipoId] [int] NOT NULL,
	[FechaAlta] [datetime] NULL,
	[Email] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ComboId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[FechaAlta] [datetime] NULL,
	[PrecioCosto] [decimal](18, 2) NULL,
	[FechaModificacion] [datetime] NULL,
	[Minimo] [int] NULL,
	[Descuento] [decimal](18, 2) NULL,
	[Codigo] [varchar](2000) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[ComboId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboProducto]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboProducto](
	[ComboProductoId] [int] IDENTITY(1,1) NOT NULL,
	[ComboId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ComboProducto] PRIMARY KEY CLUSTERED 
(
	[ComboProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionIVA]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionIVA](
	[CondicionIVAId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_CondicionIVA] PRIMARY KEY CLUSTERED 
(
	[CondicionIVAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposito]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposito](
	[DepositoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[SucursalId] [int] NULL,
	[Direccion] [varchar](500) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Deposito] PRIMARY KEY CLUSTERED 
(
	[DepositoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dolar]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dolar](
	[DolarId] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Dolar] PRIMARY KEY CLUSTERED 
(
	[DolarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Egreso]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egreso](
	[EgresoId] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[ArqueoId] [int] NULL,
	[Motivo] [varchar](5000) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Egreso] PRIMARY KEY CLUSTERED 
(
	[EgresoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](500) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] IDENTITY(1,1) NOT NULL,
	[VentaId] [int] NOT NULL,
	[iFacturaId] [varchar](1000) NULL,
	[RespuestaAPI] [varchar](max) NULL,
	[FechaCreacion] [datetime] NULL,
	[Activo] [bit] NOT NULL,
	[Realizada] [bit] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingreso]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso](
	[IngresoId] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[ArqueoId] [int] NULL,
	[Motivo] [varchar](5000) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Ingreso] PRIMARY KEY CLUSTERED 
(
	[IngresoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lista]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista](
	[ListaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[Descripcion] [varchar](5000) NULL,
	[RecargoGeneral] [bit] NOT NULL,
	[RecargoImporte] [decimal](18, 2) NULL,
	[Fecha] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Lista] PRIMARY KEY CLUSTERED 
(
	[ListaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[MarcaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneda](
	[MonedaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[MonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCredito]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCredito](
	[NotaCreditoId] [int] IDENTITY(1,1) NOT NULL,
	[VentaId] [int] NULL,
	[ClienteId] [int] NULL,
	[Destinatario] [varchar](500) NULL,
	[Fecha] [datetime] NULL,
	[Total] [decimal](18, 2) NULL,
	[RemitoId] [int] NULL,
	[UsuarioId] [int] NULL,
	[Activo] [bit] NOT NULL,
	[Observaciones] [varchar](max) NULL,
 CONSTRAINT [PK_NotaCredito] PRIMARY KEY CLUSTERED 
(
	[NotaCreditoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCreditoDetalle]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCreditoDetalle](
	[NotaCreditoDetalleId] [int] IDENTITY(1,1) NOT NULL,
	[NotaCreditoId] [int] NULL,
	[ProductoId] [int] NULL,
	[ComboId] [int] NULL,
	[Cantidad] [int] NULL,
	[Monto] [decimal](18, 2) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_NotaCreditoDetalle] PRIMARY KEY CLUSTERED 
(
	[NotaCreditoDetalleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[PerfilId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[PerfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilUsuario]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilUsuario](
	[PerfilUsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[PerfilId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_PerfilUsuario] PRIMARY KEY CLUSTERED 
(
	[PerfilUsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaTipo]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaTipo](
	[PersonaTipoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_PersonaTipo] PRIMARY KEY CLUSTERED 
(
	[PersonaTipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrecioLista]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrecioLista](
	[PrecioListaId] [int] IDENTITY(1,1) NOT NULL,
	[ProductoId] [int] NULL,
	[ComboId] [int] NULL,
	[ListaId] [int] NOT NULL,
	[Precio] [decimal](18, 2) NULL,
	[PrecioAnterior] [decimal](18, 2) NULL,
	[Fecha] [datetime] NOT NULL,
	[Cargado] [bit] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_PrecioLista] PRIMARY KEY CLUSTERED 
(
	[PrecioListaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoProductoId] [int] NOT NULL,
	[TipoDuracionId] [int] NOT NULL,
	[MarcaId] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrecioCosto] [decimal](18, 2) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[Minimo] [int] NULL,
	[Codigo] [varchar](2000) NULL,
	[Activo] [bit] NOT NULL,
	[ProveedorId] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[ProveedorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Direccion] [varchar](500) NULL,
	[FechaCreacion] [datetime] NULL,
	[Activo] [bit] NULL,
	[Telefono] [bigint] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ProveedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remito]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remito](
	[RemitoId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[VentaId] [int] NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Domicilio] [varchar](500) NULL,
	[TransportistaId] [int] NULL,
	[CUIT] [varchar](100) NULL,
	[Observaciones] [varchar](max) NULL,
	[UsuarioId] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Remito] PRIMARY KEY CLUSTERED 
(
	[RemitoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockDeposito]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockDeposito](
	[StockDepositoId] [int] IDENTITY(1,1) NOT NULL,
	[DepositoId] [int] NOT NULL,
	[TipoStockId] [int] NOT NULL,
	[ProductoId] [int] NULL,
	[ComboId] [int] NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[CantidadUsada] [decimal](18, 2) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_StockDeposito] PRIMARY KEY CLUSTERED 
(
	[StockDepositoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[SucursalId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[Direccion] [varchar](5000) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[SucursalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SucursalUsuario]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SucursalUsuario](
	[SucursalUsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[SucursalId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_SucursalUsuario] PRIMARY KEY CLUSTERED 
(
	[SucursalUsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[VentaId] [int] NOT NULL,
	[ClienteId] [int] NULL,
	[Fecha] [datetime] NULL,
	[Codigo] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCobro]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCobro](
	[TipoCobroId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCobro] PRIMARY KEY CLUSTERED 
(
	[TipoCobroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDuracion]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDuracion](
	[TipoDuracionId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoDuracion] PRIMARY KEY CLUSTERED 
(
	[TipoDuracionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[TipoProductoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[TipoProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoStock]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoStock](
	[TipoStockId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_TipoStock] PRIMARY KEY CLUSTERED 
(
	[TipoStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVenta]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVenta](
	[TipoVentaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoVenta] PRIMARY KEY CLUSTERED 
(
	[TipoVentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transportista]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportista](
	[TransportistaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Apellido] [varchar](500) NULL,
	[MontoAcumulado] [decimal](18, 2) NULL,
	[FechaUltimoTransporte] [datetime] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Transportista] PRIMARY KEY CLUSTERED 
(
	[TransportistaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioReferencia]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioReferencia](
	[UsuarioRefId] [int] IDENTITY(1,1) NOT NULL,
	[AspNetUsersId] [nvarchar](128) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_UsuarioReferencia] PRIMARY KEY CLUSTERED 
(
	[UsuarioRefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[VentaId] [int] IDENTITY(1,1) NOT NULL,
	[TipoVentaId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[ClienteId] [int] NULL,
	[TipoCobroId] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Descuento] [decimal](18, 2) NULL,
	[Final] [decimal](18, 2) NULL,
	[Fecha] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[Observaciones] [varchar](max) NULL,
	[DireccionEnvio] [varchar](5000) NULL,
	[CostoEnvio] [decimal](18, 2) NULL,
	[Pendiente] [bit] NOT NULL,
	[EstadoId] [int] NULL,
	[Recargo] [decimal](18, 2) NULL,
	[ArqueoId] [int] NULL,
	[Activo] [bit] NOT NULL,
	[UsuarioId] [int] NULL,
	[Promos] [decimal](18, 2) NULL,
	[NotaCreditoMonto] [decimal](18, 2) NULL,
	[PreventistaId] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 31/01/2023 16:20:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetalle](
	[VentaDetalleId] [int] IDENTITY(1,1) NOT NULL,
	[VentaId] [int] NOT NULL,
	[ListaId] [int] NULL,
	[ProductoId] [int] NULL,
	[ComboId] [int] NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[Precio] [varchar](50) NULL,
	[MonedaId] [int] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_VentaDetalle] PRIMARY KEY CLUSTERED 
(
	[VentaDetalleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActualizacionStock] ON 
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (8, N'Se actualizó el stock del Producto: 1. Cantidad original: 6,00. Agregado: 5. Total final: 11,00', CAST(N'2021-02-05' AS Date), N'41:1', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (9, N'Se actualizó el stock del Producto: 1. Cantidad original: -4,00. Agregado: 5. Total final: 1,00', CAST(N'2021-02-05' AS Date), N'42:3', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (10, N'Se actualizó el stock del Producto: 1. Cantidad original: 1,00. Agregado: 9. Total final: 10,00', CAST(N'2021-02-05' AS Date), N'42:13', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (11, N'Se actualizó el stock del Producto: 1. Cantidad original: 11,00. Agregado: 2. Total final: 13,00', CAST(N'2021-02-05' AS Date), N'42:26', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (12, N'Se actualizó el stock del Producto: 1. Cantidad original: 10,00. Agregado: 9. Total final: 19,00', CAST(N'2021-02-05' AS Date), N'42:39', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (13, N'Se actualizó el stock del Producto: 1. Cantidad original: 13,00. Agregado: 9. Total final: 22,00', CAST(N'2021-02-05' AS Date), N'42:46', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (14, N'Se actualizó el stock del Producto: 1. Cantidad original: 19,00. Agregado: 2. Total final: 21,00', CAST(N'2021-02-08' AS Date), N'44:18', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (15, N'Se actualizó el stock del Producto: 1. Cantidad original: 21,00. Agregado: 3. Total final: 24,00', CAST(N'2021-02-08' AS Date), N'44:25', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (16, N'Se actualizó el stock del Producto: 1. Cantidad original: 24,00. Agregado: 4. Total final: 28,00', CAST(N'2021-02-08' AS Date), N'44:29', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (17, N'Se actualizó el stock del Producto: 1. Cantidad original: 28,00. Agregado: 5. Total final: 33,00', CAST(N'2021-02-08' AS Date), N'44:33', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (18, N'Se actualizó el stock del Producto: 1. Cantidad original: 33,00. Agregado: 3. Total final: 36,00', CAST(N'2021-02-08' AS Date), N'44:36', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (19, N'Se actualizó el stock del Producto: 1. Cantidad original: 36,00. Agregado: 4. Total final: 40,00', CAST(N'2021-02-08' AS Date), N'44:44', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (20, N'Se actualizó el stock del Producto: 1. Cantidad original: 40,00. Agregado: 6. Total final: 46,00', CAST(N'2021-03-01' AS Date), N'53:45', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (21, N'Se actualizó el stock del Producto: 1. Cantidad original: 46,00. Agregado: 3. Total final: 49,00', CAST(N'2021-03-01' AS Date), N'53:50', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (22, N'Se actualizó el stock del Producto: 1. Cantidad original: 22,00. Agregado: 3. Total final: 25,00', CAST(N'2021-03-01' AS Date), N'53:54', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (23, N'Se actualizó el stock del Producto: 1. Cantidad original: 49,00. Agregado: 3. Total final: 52,00', CAST(N'2021-03-01' AS Date), N'54:28', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (24, N'Se actualizó el stock del Producto: 1. Cantidad original: 25,00. Agregado: 3. Total final: 28,00', CAST(N'2021-03-01' AS Date), N'54:43', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (25, N'Se actualizó el stock del Producto: 1. Cantidad original: 28,00. Agregado: 55. Total final: 83,00', CAST(N'2021-03-01' AS Date), N'54:52', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (26, N'Se actualizó el stock del Combo: 0. Cantidad original: 55,00. Agregado: 67. Total final: 122,00', CAST(N'2021-03-01' AS Date), N'0:15', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (27, N'Se actualizó el stock del Producto: 10. Cantidad original: 0,00. Agregado: 7. Total final: 7,00', CAST(N'2021-03-01' AS Date), N'35:42', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (28, N'Se actualizó el stock del Producto: 10. Cantidad original: 0,00. Agregado: 9. Total final: 9,00', CAST(N'2021-03-01' AS Date), N'35:45', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (29, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 3. Total final: 3,00', CAST(N'2021-03-01' AS Date), N'30:26', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (30, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 4. Total final: 4,00', CAST(N'2021-03-01' AS Date), N'30:29', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (31, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 4. Total final: 4,00', CAST(N'2021-03-02' AS Date), N'35:22', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (32, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 5. Total final: 5,00', CAST(N'2021-03-02' AS Date), N'35:25', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (33, N'Se actualizó el stock del Producto: 1. Cantidad original: 52,00. Agregado: 8. Total final: 60,00', CAST(N'2021-03-04' AS Date), N'2:0', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (34, N'Se actualizó el stock del Producto: 1. Cantidad original: 60,00. Agregado: 180. Total final: 240,00', CAST(N'2021-03-04' AS Date), N'2:9', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (35, N'Se actualizó el stock del Combo: 0. Cantidad original: 122,00. Agregado: 8. Total final: 130,00', CAST(N'2021-03-04' AS Date), N'40:34', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (36, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 343. Total final: 343,00', CAST(N'2021-03-05' AS Date), N'48:45', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (37, N'Se actualizó el stock del Combo: 0. Cantidad original: 0,00. Agregado: 56. Total final: 56,00', CAST(N'2021-03-05' AS Date), N'50:7', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (38, N'Se actualizó el stock del Producto: 10. Cantidad original: 7,00. Agregado: 20. Total final: 27,00', CAST(N'2021-03-11' AS Date), N'13:41', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (39, N'Se actualizó el stock del Producto: 10. Cantidad original: 9,00. Agregado: 18. Total final: 27,00', CAST(N'2021-03-11' AS Date), N'13:53', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (40, N'Se actualizó el stock del Producto: 12. Cantidad original: 0.00. Agregado: 10. Total final: 10.00', CAST(N'2021-05-25' AS Date), N'24:32', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (41, N'Se actualizó el stock del Producto: 12. Cantidad original: 10.00. Agregado: 90. Total final: 100.00', CAST(N'2021-05-25' AS Date), N'24:38', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (42, N'Se actualizó el stock del Combo: 0. Cantidad original: 56.00. Agregado: 100. Total final: 156.00', CAST(N'2021-05-26' AS Date), N'50:49', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (43, N'Se actualizó el stock del Producto: 12. Cantidad original: 100.00. Agregado: 2. Total final: 102.00', CAST(N'2021-06-03' AS Date), N'15:10', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (44, N'Se actualizó el stock del Producto: 1. Cantidad original: 0.00. Agregado: 150. Total final: 150.00', CAST(N'2021-06-22' AS Date), N'57:3', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (45, N'Se actualizó el stock del Producto: 5. Cantidad original: 0.00. Agregado: 30. Total final: 30.00', CAST(N'2021-06-22' AS Date), N'57:27', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (46, N'Se actualizó el stock del Producto: 4. Cantidad original: 0.00. Agregado: 70. Total final: 70.00', CAST(N'2021-06-22' AS Date), N'57:37', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (47, N'Se actualizó el stock del Producto: 3. Cantidad original: 0.00. Agregado: 60. Total final: 60.00', CAST(N'2021-06-22' AS Date), N'57:49', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (48, N'Se actualizó el stock del Producto: 2. Cantidad original: 0.00. Agregado: 150. Total final: 150.00', CAST(N'2021-06-22' AS Date), N'57:58', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (49, N'Se actualizó el stock del Producto: 5. Cantidad original: 30.00. Agregado: 20. Total final: 50.00', CAST(N'2021-06-24' AS Date), N'37:38', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (50, N'Se actualizó el stock del Producto: 5. Cantidad original: 50.00. Agregado: 20. Total final: 70.00', CAST(N'2021-06-24' AS Date), N'37:54', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (51, N'Se actualizó el stock del Producto: 1. Cantidad original: 58,00. Agregado: 300. Total final: 358,00', CAST(N'2021-07-04' AS Date), N'23:50', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (52, N'Se actualizó el stock del Producto: 1. Cantidad original: -182,00. Agregado: 500. Total final: 318,00', CAST(N'2021-07-06' AS Date), N'54:32', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (53, N'Se actualizó el stock del Producto: 1. Cantidad original: 318,00. Agregado: 32. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'54:38', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (54, N'Se actualizó el stock del Producto: 3. Cantidad original: -191,00. Agregado: 300. Total final: 109,00', CAST(N'2021-07-06' AS Date), N'54:51', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (55, N'Se actualizó el stock del Producto: 3. Cantidad original: 109,00. Agregado: 200. Total final: 309,00', CAST(N'2021-07-06' AS Date), N'54:56', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (56, N'Se actualizó el stock del Producto: 3. Cantidad original: 309,00. Agregado: 41. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'55:0', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (57, N'Se actualizó el stock del Producto: 1. Cantidad original: 200,00. Agregado: 150. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'10:53', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (58, N'Se actualizó el stock del Producto: 1. Cantidad original: 300,00. Agregado: 50. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'25:45', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (59, N'Se actualizó el stock del Producto: 1. Cantidad original: 200,00. Agregado: 150. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'34:23', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (60, N'Se actualizó el stock del Producto: 3. Cantidad original: 300,00. Agregado: 50. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'34:31', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (61, N'Se actualizó el stock del Producto: 1. Cantidad original: 250,00. Agregado: 250. Total final: 500,00', CAST(N'2021-07-06' AS Date), N'35:39', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (62, N'Se actualizó el stock del Producto: 3. Cantidad original: 300,00. Agregado: 50. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'35:49', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (63, N'Se actualizó el stock del Producto: 1. Cantidad original: 500,00. Agregado: -150. Total final: 350,00', CAST(N'2021-07-06' AS Date), N'36:1', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (64, N'Se actualizó el stock del Producto: 1. Cantidad original: -253,00. Agregado: 500. Total final: 247,00', CAST(N'2021-07-12' AS Date), N'6:36', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (65, N'Se actualizó el stock del Producto: 1. Cantidad original: 247,00. Agregado: 3. Total final: 250,00', CAST(N'2021-07-12' AS Date), N'6:43', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (66, N'Se actualizó el stock del Producto: 3. Cantidad original: 154,00. Agregado: 146. Total final: 300,00', CAST(N'2021-07-12' AS Date), N'7:2', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (67, N'Se actualizó el stock del Producto: 3. Cantidad original: 300,00. Agregado: -50. Total final: 250,00', CAST(N'2021-07-12' AS Date), N'7:8', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (68, N'Se actualizó el stock del Producto: 1. Cantidad original: 149,00. Agregado: 10. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'22:54', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (69, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 0. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'26:31', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (70, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 0. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'27:4', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (71, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 0. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'27:15', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (72, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 0. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'27:47', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (73, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 0. Total final: 159,00', CAST(N'2021-07-12' AS Date), N'29:3', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (74, N'Se actualizó el stock del Producto: 1. Cantidad original: 159,00. Agregado: 1. Total final: 160,00', CAST(N'2021-07-12' AS Date), N'29:9', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (75, N'Se actualizó el stock del Producto: 1. Cantidad original: 160,00. Agregado: 0. Total final: 160,00', CAST(N'2021-07-12' AS Date), N'29:27', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (76, N'Se actualizó el stock del Producto: 1. Cantidad original: 160,00. Agregado: 40. Total final: 200,00', CAST(N'2021-07-12' AS Date), N'30:54', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (77, N'Se actualizó el stock del Producto: 3. Cantidad original: 149,00. Agregado: 51. Total final: 200,00', CAST(N'2021-07-12' AS Date), N'31:9', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (78, N'Se actualizó el stock del Producto: 6. Cantidad original: 0,00. Agregado: 200. Total final: 200,00', CAST(N'2021-07-31' AS Date), N'32:50', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (79, N'Se actualizó el stock del Producto: 1. Cantidad original: 0,00. Agregado: 15. Total final: 15,00', CAST(N'2021-08-03' AS Date), N'40:20', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (80, N'Se actualizó el stock del Producto: 1. Cantidad original: 15,00. Agregado: 30. Total final: 45,00', CAST(N'2021-08-03' AS Date), N'40:35', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (81, N'Se actualizó el stock del Producto: 1. Cantidad original: 0,00. Agregado: 100. Total final: 100,00', CAST(N'2021-08-04' AS Date), N'35:53', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (82, N'Se actualizó el stock del Producto: 2. Cantidad original: 0,00. Agregado: 100. Total final: 100,00', CAST(N'2021-08-04' AS Date), N'56:13', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (83, N'Se actualizó el stock del Producto: 1. Cantidad original: 34,00. Agregado: 10. Total final: 44,00', CAST(N'2022-05-30' AS Date), N'0:17', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (84, N'Se actualizó el stock del Producto: 2. Cantidad original: 65,00. Agregado: 10. Total final: 75,00', CAST(N'2022-05-30' AS Date), N'0:17', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (85, N'Se actualizó el stock del Producto: 1. Cantidad original: 44,00. Agregado: 5. Total final: 49,00', CAST(N'2022-05-30' AS Date), N'0:25', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (86, N'Se actualizó el stock del Producto: 2. Cantidad original: 75,00. Agregado: 5. Total final: 80,00', CAST(N'2022-05-30' AS Date), N'0:25', 1, 1)
GO
INSERT [dbo].[ActualizacionStock] ([ActualizacionStockId], [Descripcion], [Fecha], [Hora], [UsuarioReferenciaId], [Activo]) VALUES (87, N'Se actualizó el stock del Producto: 1. Cantidad original: 49,00. Agregado: 10. Total final: 59,00', CAST(N'2022-05-30' AS Date), N'0:33', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[ActualizacionStock] OFF
GO
SET IDENTITY_INSERT [dbo].[Anio] ON 
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (1, N'1990', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (2, N'1991', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (3, N'1992', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (4, N'1993', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (5, N'1994', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (6, N'1995', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (7, N'1996', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (8, N'1997', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (9, N'1998', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (10, N'1999', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (11, N'2000', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (12, N'2001', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (13, N'2002', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (14, N'2003', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (15, N'2004', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (16, N'2005', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (17, N'2006', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (18, N'2007', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (19, N'2008', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (20, N'2009', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (21, N'2010', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (22, N'2011', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (23, N'2012', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (24, N'2013', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (25, N'2014', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (26, N'2015', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (27, N'2016', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (28, N'2017', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (29, N'2018', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (30, N'2019', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (31, N'2020', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (32, N'2021', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (33, N'2022', 1)
GO
INSERT [dbo].[Anio] ([AnioId], [Nombre], [Activo]) VALUES (34, N'2023', 1)
GO
SET IDENTITY_INSERT [dbo].[Anio] OFF
GO
SET IDENTITY_INSERT [dbo].[Arqueo] ON 
GO
INSERT [dbo].[Arqueo] ([ArqueoId], [FechaInicio], [FechaFin], [Total], [Faltante], [Sobrante], [Observaciones], [Agregado], [Retirado], [HoraInicio], [HoraFin], [Abierto], [Iniciado], [Finalizado], [TotalEfectivo], [UsuarioInicioId], [UsuarioFinalizoId], [Activo], [ArqueoTipoId]) VALUES (1, CAST(N'2021-08-30' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'17:54', NULL, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 9, NULL, 1, 2)
GO
INSERT [dbo].[Arqueo] ([ArqueoId], [FechaInicio], [FechaFin], [Total], [Faltante], [Sobrante], [Observaciones], [Agregado], [Retirado], [HoraInicio], [HoraFin], [Abierto], [Iniciado], [Finalizado], [TotalEfectivo], [UsuarioInicioId], [UsuarioFinalizoId], [Activo], [ArqueoTipoId]) VALUES (2, CAST(N'2021-09-10' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'18:19', NULL, 1, CAST(1500.00 AS Decimal(18, 2)), NULL, NULL, 15, NULL, 0, 1)
GO
INSERT [dbo].[Arqueo] ([ArqueoId], [FechaInicio], [FechaFin], [Total], [Faltante], [Sobrante], [Observaciones], [Agregado], [Retirado], [HoraInicio], [HoraFin], [Abierto], [Iniciado], [Finalizado], [TotalEfectivo], [UsuarioInicioId], [UsuarioFinalizoId], [Activo], [ArqueoTipoId]) VALUES (1001, CAST(N'2022-05-30' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'12:10', NULL, 1, CAST(600.00 AS Decimal(18, 2)), NULL, NULL, 1, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Arqueo] OFF
GO
SET IDENTITY_INSERT [dbo].[ArqueoTipo] ON 
GO
INSERT [dbo].[ArqueoTipo] ([ArqueoTipoId], [Nombre], [Activo]) VALUES (1, N'Caja', 1)
GO
INSERT [dbo].[ArqueoTipo] ([ArqueoTipoId], [Nombre], [Activo]) VALUES (2, N'Preventa', 1)
GO
SET IDENTITY_INSERT [dbo].[ArqueoTipo] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9a05ec37-24c8-4ec6-b755-6f4c0d37c634', N'Administracion')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd12cd424-a3b5-4624-a291-8248ce02df72', N'Caja')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'913c065f-d82c-4908-b94f-e952762b175f', N'Desarrollo')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c2585004-62ca-4d9d-ba74-552943d3a034', N'Preventista')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a93bb1a-c10d-4781-b1ef-f340a6c5159d', N'9a05ec37-24c8-4ec6-b755-6f4c0d37c634')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a3e99f1-d86e-4112-b0d7-678d7c481513', N'd12cd424-a3b5-4624-a291-8248ce02df72')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a7ede6d1-ac24-4496-8a8a-d17c9b01e5db', N'c2585004-62ca-4d9d-ba74-552943d3a034')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c59bf4f2-d472-450e-94be-c3e1f5233925', N'913c065f-d82c-4908-b94f-e952762b175f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd34230d3-1167-4d71-8b35-c17cf2a18407', N'913c065f-d82c-4908-b94f-e952762b175f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e42d40c5-0f94-495f-b25b-88dd66d3e20b', N'c2585004-62ca-4d9d-ba74-552943d3a034')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'edef7532-5238-48ec-be90-dc28ebdcf68b', N'9a05ec37-24c8-4ec6-b755-6f4c0d37c634')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f4bb1838-320a-438b-8d23-a7004f04d4d5', N'913c065f-d82c-4908-b94f-e952762b175f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'0a93bb1a-c10d-4781-b1ef-f340a6c5159d', N'anasofiajaimeinfante@gmail.com', 1, N'APFwiaGkU4vLghsgXgbZc1RufW8qfL2bstFzZrTLtGdZ06X9kNSItxmrA5Ietcsymg==', N'4b27e0bf-7d28-42f0-add1-2907ca412c2b', N'0385155843871', 0, 0, NULL, 1, 0, N'anasofiajaimeinfante@gmail.com', N'ANA SOFIA', N'INFANTE', N'37529660', 1, 6, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'2791f20e-f381-4313-a8ab-0bd052cd95be', N'Ir773275@gmail.com', 1, N'AB9pWlvXm9QDu+SWpe4WJR/9RFw24/urfncKvDWBdh04omm/t3He2UuYytw/Txk7jw==', N'9f5228f0-ea05-462f-8423-f02d5d04e3bc', NULL, 0, 0, NULL, 1, 0, N'Ir773275@gmail.com', N'LILIANA', N'RODRIGUEZ', N'28350425', 3, 13, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'5f26885a-05ad-4182-b79e-84a0e31e7495', N'moregabriela51@gmail.com', 1, N'ANlBKmqKfOFJVYyEJurRSBO0VAElaXm+h78ukj46/QXOjw2pBmSewoDddz0dA7fwHw==', N'9b596e39-8107-4535-884e-e86a273b78e5', N'3855860499', 0, 0, NULL, 1, 0, N'moregabriela51@gmail.com', N'GABRIELA', N'MORE', N'37652810', 2, 8, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'6a3e99f1-d86e-4112-b0d7-678d7c481513', N'donpeuser@gmail.com', 1, N'AF3JmJEpWwDYjQRezNBlyja8PagoCggI/RNcaELjmD5PkQ74ctiFGfesFxp736+D6Q==', N'33770739-ef24-4258-a79e-b88003a03ac9', N'3856439585', 0, 0, NULL, 1, 0, N'donpeuser@gmail.com', N'SEBASTIAN', N'PEUSER', N'23257818', 2, 15, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'a2e5b1d8-be1a-4e75-9f4e-7fa7b5346bec', N'Vasquezfederico784@gmail.com', 1, N'APVND19Py2Im75vOK4ZjW6meRAjIDw7jvwV25UUwbub3gIxvqsFFbxquXLJvIiMMgg==', N'65b7fc87-a8fd-45d6-99ca-91a62d07277e', NULL, 0, 0, NULL, 1, 0, N'Vasquezfederico784@gmail.com', N'FEDERICO JOAQUIN', N'VASQUEZ ALMARAZ', N'37735892', 3, 10, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'a7ede6d1-ac24-4496-8a8a-d17c9b01e5db', N'ale.t.juarez18@gmail.com', 1, N'AO/r+usIoRGJaxNdxLmG4rToNBxIt/MD/fq/+ZvK61RY/ldbqRBSnSQQthJ1v9/ztQ==', N'4bdf401d-163a-49d1-86fc-f504c300a853', N'3856148299', 0, 0, NULL, 1, 0, N'ale.t.juarez18@gmail.com', N'TERESA', N'JUAREZ', N'41865685', 3, 7, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'c526ff8a-5a4b-4150-9ead-8c69b8f110f2', N'Carlosarielortiz80@gmail.com', 1, N'AI1nxvVqdvZ2+uDQPOn/Unu9P6LRa1LqCKBhduVdMNDtj0HhNyaWxbEcMkccl+w1og==', N'014bbcf6-e68a-41fb-abf6-70ac887f1d08', NULL, 0, 0, NULL, 1, 0, N'Carlosarielortiz80@gmail.com', N'CARLOS ARIEL', N'ORTIZ', N'38640885', 3, 12, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'c59bf4f2-d472-450e-94be-c3e1f5233925', N'bmtelena@gmail.com', 1, N'AKRYA20ahhC1oGyZ/wzc1zhW1cnDIKBxp8iowF9nEGF5fxT7Jap+SfUEC5ik7BfSzg==', N'b4227081-92ff-4ba7-9aeb-d2b1feac715f', N'3517548577', 0, 0, NULL, 1, 0, N'bmtelena@gmail.com', N'BENJA', N'TELEÑA', N'29237333', 4, 2, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'd2d0dee6-91c9-49ba-afd3-8bf1f83591f3', N'Javi.San@live.com.ar', 1, N'AGOy2qT/Y8HPsM44qN1cjgX71kFSo6izjuXFcjiD47gNfItt5lARJD54cPrL2hu8Rw==', N'71728c7f-7549-4c03-83b2-cd1566a5b05f', NULL, 0, 0, NULL, 1, 0, N'Javi.San@live.com.ar', N'JAVIER', N'SANTILLAN', N'33439813', 3, 11, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'd34230d3-1167-4d71-8b35-c17cf2a18407', N'cctv.redescba@gmail.com', 1, N'AFQRpVeOC/4X82SuEqGKVAN6fMw0RfjQQ1JuJa9pXgWrhKSpvB6rdaAf32I/XHRXEg==', N'5d626416-094f-4376-aeec-806e3cc6f947', N'03512291903', 0, 0, NULL, 1, 0, N'cctv.redescba@gmail.com', N'CCTV', N'REDES', N'29237338', 4, 3, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'e42d40c5-0f94-495f-b25b-88dd66d3e20b', N'facusalazar90@gmail.com', 1, N'AAUrxG+ytRxAcQuOgAP9AnZbAmx89xH8CAD+6APCJf/tm/V2dftu6JyJoxCCTthLXQ==', N'd90660a9-acdd-4764-b8be-ef92ae1d0f66', NULL, 0, 0, NULL, 1, 0, N'facusalazar90@gmail.com', N'FACUNDO NAZARENO', N'SALAZAR', N'35199290', 3, 9, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'edef7532-5238-48ec-be90-dc28ebdcf68b', N'distribuidorasoria@yahoo.com', 1, N'AP3HnkpbG/02egKLz6kdj1Erzu4t7refMOl/+4PbT8YaCTQS2CJRW9W2LJ15S+37dA==', N'059c22aa-acbd-4b9d-81df-cea8e6ade99c', N'0385154040611', 0, 0, NULL, 1, 0, N'distribuidorasoria@yahoo.com', N'FELIPE ALEXANDRO', N'SORIA', N'36641453', 1, 4, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'f4bb1838-320a-438b-8d23-a7004f04d4d5', N'mercau.nehemias@gmail.com', 1, N'AERVnS/4gCdLbmUW6qn3zhhF+4F+7rqoCDqMeyIhIAqrdqLhfCPbDdPS0D2AIKzAeA==', N'8bcc8459-ee19-4ff0-a935-1f3f765c6f82', N'3512291903', 0, 0, NULL, 1, 0, N'mercau.nehemias@gmail.com', N'NEHEMIAS', N'MERCAU', N'35638296', 4, 1, 1)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Nombre], [Apellido], [Dni], [PerfilId], [UsuarioId], [SucursalId]) VALUES (N'f58d375f-46f9-43ed-bcc5-9f9d4c9bd5b9', N'Ibanezclaudiafabiola@gmail.com', 1, N'AEqDyNgk7FQHFo2ZBmJcHhMoYBBfBzFwM9qUek+Y7978lW/LzwO+KzepoGVXYl3Yig==', N'd6ab61f7-b36d-4f7e-bd30-575bfa8931b9', N'0385154097911', 0, 0, NULL, 1, 0, N'Ibanezclaudiafabiola@gmail.com', N'CLAUDIA FABIOLA', N'IBAÑEZ', N'32315007', 1, 5, 1)
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (1, N'MONTEROS JUAN VICENTE', N'20-18524476-9', N'Ruta 93-1095- La banda', 1, NULL, 1, CAST(N'2021-08-04T12:33:40.000' AS DateTime), N'bmtelena@gmail.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (2, N'PALAVECINO SOLEDAD', N'20-26570331-9', N'Calle 109 N°2933 entre 17 y 18', 4, NULL, 1, CAST(N'2021-08-10T18:42:37.567' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (3, N'TROTTA PAMELA CINTHIA', N'27-32928331-9', N'17 y 18 N°658', 4, NULL, 1, CAST(N'2021-08-10T18:43:30.237' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (4, N'MALDONADO FLORENCIA', N'27-35117760-3', N'Mza D lote 3 N°120 B° aeropuerto', 4, NULL, 1, CAST(N'2021-08-10T18:48:22.910' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (5, N'MIGUEL CRISTIAN', N'20-29716853-4', N'Calle 111 entre 7 y 8', 4, NULL, 1, CAST(N'2021-08-10T18:53:22.160' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (6, N'BURGOS SILVIA DEL VALLE', N'27-17563960-3', N'Calle 14 y 104 N°440', 4, NULL, 1, CAST(N'2021-08-10T18:54:02.847' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (7, N'CLAUDIA MARIA ', N'27-27918143-3', N'Calle 17 y 109 N°684', 4, NULL, 1, CAST(N'2021-08-10T18:55:13.000' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (8, N'CARRIZZO ADELINA', N'27-30088067-9', N'Abs ibarra 589', 4, NULL, 1, CAST(N'2021-08-10T18:57:22.737' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (9, N'EMANUEL SEQUEIRA', N'23-33092627-9', N'Segundo araujo N°356', 4, NULL, 1, CAST(N'2021-08-10T19:05:33.817' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (10, N'LUNA MONICA', N'27-27615539-9', N'Calle 222 entre balcarse y velez ', 4, NULL, 1, CAST(N'2021-08-10T19:08:34.330' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (11, N'ROSA ESTER LUGONES', N'27-17361862-5', N'Aguirre norte 3039 desp victoria', 4, NULL, 1, CAST(N'2021-08-10T19:09:25.533' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (12, N'GISELLA VERONICA', N'27-34167961-9', N'Av aguirre norte 3097 Bº huaico hondo', 4, NULL, 1, CAST(N'2021-08-17T09:50:27.363' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (13, N'ACUÑA DOMINGO', N'20-26875652-4', N'Damacio palacio y fraternidad', 4, NULL, 1, CAST(N'2021-08-17T09:51:36.770' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (14, N'LEDESMA SILVINA', N'27-16999692-5', N'Gral Paz 861', 4, NULL, 1, CAST(N'2021-08-17T09:52:37.067' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (15, N'ABDALA EZEQUIEL', N'20-43361162-5', N'Eduardo miguel 772', 4, NULL, 1, CAST(N'2021-08-17T09:57:53.847' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (16, N'CONCHA CRUZ LUIS', N'20-28246411-0', N'Nueva costanera', 4, NULL, 1, CAST(N'2021-08-17T09:58:44.830' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (17, N'BRAVO SUSANA', N'27-25333349-4', N'Gobernador Barraza', 4, NULL, 1, CAST(N'2021-08-17T10:00:06.363' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (18, N'HERRERA MIRIAM LILIANA', N'27-23929182-7', N'Gobernador Barraza 977', 4, NULL, 1, CAST(N'2021-08-17T10:00:46.987' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (19, N'CARNES DON JULIO', N'20-24591170-0', N'Av aguirre norte 601', 4, NULL, 1, CAST(N'2021-08-17T10:05:38.847' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (20, N'LESCANO DARDO', N'27-26125397-1', N'Calle sgo Herrera 1493', 4, NULL, 1, CAST(N'2021-08-17T10:06:20.533' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (21, N'AVILA REINA', N'27-14572263-8', N'Irigoyen 1454', 4, NULL, 1, CAST(N'2021-08-17T10:06:52.707' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (22, N'MIRANDA CLAUDIA PATRICIA', N'27-17889795-6', N'Anchorena 487', 4, NULL, 1, CAST(N'2021-08-17T10:07:21.723' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (23, N'CASA GRANDE GISELA', N'27-32859273-3', N'Colon norte 669', 4, NULL, 1, CAST(N'2021-08-17T10:07:55.317' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (24, N'IBAÑEZ JUAN CARLOS', N'20-12075907-9', N'Sgo herrera 523 Bº Colon', 4, NULL, 1, CAST(N'2021-08-17T10:08:48.363' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (25, N'RENZO ADRIAN GISELA', N'23-00000000-0', N'Calle 480 Nº 1228', 4, NULL, 1, CAST(N'2021-08-17T10:18:57.690' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (26, N'ALBARRACIN FLORENCIA', N'27-37509909-3', N'Omero manzi entre 815 y 816', 4, NULL, 1, CAST(N'2021-08-17T10:29:35.427' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (27, N'LEDESMA JUAN RAMON', N'20-25114599-8', N'pje 314 y vera cruz', 4, NULL, 1, CAST(N'2021-08-17T10:31:37.207' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (28, N'TREJO JULIANA', N'27-36639731-6', N'Vera cruz entre 314 y 315', 4, NULL, 1, CAST(N'2021-08-17T10:32:18.253' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (29, N'DESPENSA LAS CHICAS', N'23-31904736-4', N'Vera cruz y pje 3', 4, NULL, 1, CAST(N'2021-08-17T10:45:14.207' AS DateTime), N'notiene@soria.com', 1)
GO
INSERT [dbo].[Cliente] ([ClienteId], [RazonSocial], [CUIT], [Direccion], [CondicionIVAId], [Telefono], [PersonaTipoId], [FechaAlta], [Email], [Activo]) VALUES (30, N'WALTER DISANTO', N'20-31716516-2', N'Mza B lote 19 Bº Fabaloro', 4, NULL, 1, CAST(N'2021-08-17T10:46:19.377' AS DateTime), N'notiene@soria.com', 1)
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Combo] ON 
GO
INSERT [dbo].[Combo] ([ComboId], [Nombre], [Descripcion], [FechaAlta], [PrecioCosto], [FechaModificacion], [Minimo], [Descuento], [Codigo], [Activo]) VALUES (1, N'GATORADE MANZANA 1.25 L. X3', N'Gatorade manzana 1.25 l. X3', CAST(N'2021-08-04T12:00:52.633' AS DateTime), CAST(395.25 AS Decimal(18, 2)), NULL, 99999999, NULL, N'999', 1)
GO
INSERT [dbo].[Combo] ([ComboId], [Nombre], [Descripcion], [FechaAlta], [PrecioCosto], [FechaModificacion], [Minimo], [Descuento], [Codigo], [Activo]) VALUES (2, N'GATORADE 1.25 L. MANZANA C', N'Gatorade manzana 1.25 l. C', CAST(N'2021-08-27T20:01:06.473' AS DateTime), CAST(131.75 AS Decimal(18, 2)), NULL, 99999999, NULL, N'c7792170110575', 1)
GO
SET IDENTITY_INSERT [dbo].[Combo] OFF
GO
SET IDENTITY_INSERT [dbo].[ComboProducto] ON 
GO
INSERT [dbo].[ComboProducto] ([ComboProductoId], [ComboId], [ProductoId], [Fecha], [Activo]) VALUES (1, 1, 2, CAST(N'2021-08-04T12:00:53.057' AS DateTime), 1)
GO
INSERT [dbo].[ComboProducto] ([ComboProductoId], [ComboId], [ProductoId], [Fecha], [Activo]) VALUES (2, 1, 2, CAST(N'2021-08-04T12:00:53.070' AS DateTime), 1)
GO
INSERT [dbo].[ComboProducto] ([ComboProductoId], [ComboId], [ProductoId], [Fecha], [Activo]) VALUES (3, 1, 2, CAST(N'2021-08-04T12:00:53.070' AS DateTime), 1)
GO
INSERT [dbo].[ComboProducto] ([ComboProductoId], [ComboId], [ProductoId], [Fecha], [Activo]) VALUES (4, 2, 2, CAST(N'2021-08-27T20:01:07.160' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[ComboProducto] OFF
GO
SET IDENTITY_INSERT [dbo].[CondicionIVA] ON 
GO
INSERT [dbo].[CondicionIVA] ([CondicionIVAId], [Nombre], [Activo]) VALUES (1, N'RESPONSABLE INSCRIPTO', 1)
GO
INSERT [dbo].[CondicionIVA] ([CondicionIVAId], [Nombre], [Activo]) VALUES (2, N'EXENTO', 1)
GO
INSERT [dbo].[CondicionIVA] ([CondicionIVAId], [Nombre], [Activo]) VALUES (3, N'MONOTRIBUTO', 1)
GO
INSERT [dbo].[CondicionIVA] ([CondicionIVAId], [Nombre], [Activo]) VALUES (4, N'CONSUMIDOR FINAL', 1)
GO
SET IDENTITY_INSERT [dbo].[CondicionIVA] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposito] ON 
GO
INSERT [dbo].[Deposito] ([DepositoId], [Nombre], [SucursalId], [Direccion], [Activo]) VALUES (1, N'Deposito1', 1, N'Direcc 1', 1)
GO
SET IDENTITY_INSERT [dbo].[Deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[Dolar] ON 
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1, CAST(102.17 AS Decimal(18, 2)), CAST(N'2021-08-03T16:40:04.947' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (2, CAST(102.17 AS Decimal(18, 2)), CAST(N'2021-08-04T01:42:41.227' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (3, CAST(102.25 AS Decimal(18, 2)), CAST(N'2021-08-05T10:10:02.713' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (4, CAST(102.28 AS Decimal(18, 2)), CAST(N'2021-08-06T09:49:57.407' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (5, CAST(102.30 AS Decimal(18, 2)), CAST(N'2021-08-07T09:04:41.277' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (6, CAST(102.33 AS Decimal(18, 2)), CAST(N'2021-08-09T18:46:22.533' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (7, CAST(102.33 AS Decimal(18, 2)), CAST(N'2021-08-10T10:43:51.523' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (8, CAST(102.45 AS Decimal(18, 2)), CAST(N'2021-08-12T15:07:06.440' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (9, CAST(102.36 AS Decimal(18, 2)), CAST(N'2021-08-13T10:10:20.957' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (10, CAST(102.53 AS Decimal(18, 2)), CAST(N'2021-08-15T23:27:47.097' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (11, CAST(102.53 AS Decimal(18, 2)), CAST(N'2021-08-16T19:01:16.910' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (12, CAST(102.53 AS Decimal(18, 2)), CAST(N'2021-08-17T09:45:11.940' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (13, CAST(102.57 AS Decimal(18, 2)), CAST(N'2021-08-18T12:19:48.393' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (14, CAST(102.61 AS Decimal(18, 2)), CAST(N'2021-08-19T20:35:57.270' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (15, CAST(102.64 AS Decimal(18, 2)), CAST(N'2021-08-21T11:41:36.660' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (16, CAST(102.64 AS Decimal(18, 2)), CAST(N'2021-08-22T20:08:29.337' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (17, CAST(102.76 AS Decimal(18, 2)), CAST(N'2021-08-23T19:53:48.993' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (18, CAST(102.76 AS Decimal(18, 2)), CAST(N'2021-08-24T10:39:15.670' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (19, CAST(102.79 AS Decimal(18, 2)), CAST(N'2021-08-25T00:23:10.160' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (20, CAST(102.87 AS Decimal(18, 2)), CAST(N'2021-08-26T12:06:59.223' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (21, CAST(102.97 AS Decimal(18, 2)), CAST(N'2021-08-27T19:55:25.660' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (22, CAST(102.97 AS Decimal(18, 2)), CAST(N'2021-08-30T08:18:11.290' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (23, CAST(103.11 AS Decimal(18, 2)), CAST(N'2021-08-31T11:42:34.650' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (24, CAST(103.22 AS Decimal(18, 2)), CAST(N'2021-09-02T11:43:31.290' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (25, CAST(103.33 AS Decimal(18, 2)), CAST(N'2021-09-03T20:05:35.657' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (26, CAST(103.33 AS Decimal(18, 2)), CAST(N'2021-09-05T13:06:17.853' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (27, CAST(103.56 AS Decimal(18, 2)), CAST(N'2021-09-10T18:14:51.027' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (28, CAST(103.78 AS Decimal(18, 2)), CAST(N'2021-09-18T09:55:13.317' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1018, CAST(111.37 AS Decimal(18, 2)), CAST(N'2022-02-06T17:27:51.183' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1019, CAST(117.58 AS Decimal(18, 2)), CAST(N'2022-04-07T13:46:10.370' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1020, CAST(119.14 AS Decimal(18, 2)), CAST(N'2022-04-20T22:26:16.977' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1021, CAST(123.91 AS Decimal(18, 2)), CAST(N'2022-05-20T20:12:13.417' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1022, CAST(124.81 AS Decimal(18, 2)), CAST(N'2022-05-30T11:57:32.910' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1023, CAST(125.95 AS Decimal(18, 2)), CAST(N'2022-06-03T10:31:06.783' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (1024, CAST(142.84 AS Decimal(18, 2)), CAST(N'2022-08-19T15:45:20.193' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (2024, CAST(178.50 AS Decimal(18, 2)), CAST(N'2022-12-28T14:22:10.157' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (3024, CAST(188.53 AS Decimal(18, 2)), CAST(N'2023-01-16T21:09:34.680' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (3025, CAST(189.52 AS Decimal(18, 2)), CAST(N'2023-01-17T15:31:11.023' AS DateTime))
GO
INSERT [dbo].[Dolar] ([DolarId], [Precio], [Fecha]) VALUES (3026, CAST(190.37 AS Decimal(18, 2)), CAST(N'2023-01-20T12:33:25.697' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Dolar] OFF
GO
SET IDENTITY_INSERT [dbo].[Estado] ON 
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (1, N'Creada', N'Iniciada', 0)
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (2, N'Pedido', N'En Pedido', 1)
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (3, N'Preparacion', N'En Preparación', 1)
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (4, N'Completada', N'Finalizada', 1)
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (5, N'Anulada', N'Cancelada', 1)
GO
INSERT [dbo].[Estado] ([EstadoId], [Nombre], [Descripcion], [Activo]) VALUES (6, N'Despachado', N'Despachar', 1)
GO
SET IDENTITY_INSERT [dbo].[Estado] OFF
GO
SET IDENTITY_INSERT [dbo].[Lista] ON 
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (1, N'MINORISTA 1', NULL, 0, NULL, CAST(N'2021-08-02T19:47:25.940' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (2, N'MINORISTA 2', NULL, 0, NULL, CAST(N'2021-08-02T19:47:35.153' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (3, N'MINORISTA 3', NULL, 0, NULL, CAST(N'2021-08-02T19:47:52.167' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (4, N'MAYORISTA 1', NULL, 0, NULL, CAST(N'2021-08-02T19:48:02.443' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (5, N'MAYORISTA 2', NULL, 0, NULL, CAST(N'2021-08-02T19:48:12.573' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (6, N'MAYORISTA PREV. 1', NULL, 0, NULL, CAST(N'2021-08-02T19:48:21.453' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (7, N'MAYORISTA PREV. 2', NULL, 0, NULL, CAST(N'2021-08-02T19:48:33.527' AS DateTime), 1)
GO
INSERT [dbo].[Lista] ([ListaId], [Nombre], [Descripcion], [RecargoGeneral], [RecargoImporte], [Fecha], [Activo]) VALUES (8, N'MAYORISTA PREV. 3', NULL, 0, NULL, CAST(N'2021-08-02T19:48:44.737' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Lista] OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (1, N'GATORADE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (2, N'QUILMES', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (3, N'ANDES', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (4, N'CANDELA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (5, N'REXONA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (6, N'COSTAS DEL SOL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (7, N'SOLEIL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (8, N'HALCONERO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (9, N'FRAU', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (10, N'DANICA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (11, N'HELLMANS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (12, N'DON ERNESTO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (13, N'GALLO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (14, N'YATAY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (15, N'MAGISTRAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (16, N'RICATTO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (17, N'RIVOLI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (18, N'TIO NICO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (19, N'SAN AGUSTIN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (20, N'CHUKER', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (21, N'SI DIET', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (22, N'VIÑA DE BALBO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (23, N'MICHAEL TORINO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (24, N'UVITA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (25, N'BUDWEISER', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (26, N'PATAGONIA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (27, N'ESTANCIA MENDOZA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (28, N'HURSE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (29, N'ALICANTE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (30, N'KNOR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (31, N'WILDE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (32, N'CELUSAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (33, N'LA MERE MICHAEL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (34, N'DUMBA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (35, N'MARUSAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (36, N'VILLA RICA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (37, N'COLGATE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (38, N'KOLYNOS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (39, N'MANFREY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (40, N'CARMELITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (41, N'PUNTA DEL AGUA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (42, N'DULCOR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (43, N'ARTOLA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (44, N'PATLA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (45, N'NOEL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (46, N'RAULITO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (47, N'CEBILA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (48, N'MORA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (49, N'BAHIA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (50, N'EL DIQUE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (51, N'INALPA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (52, N'LA COLINA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (53, N'MARBELLA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (54, N'PENNISI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (55, N'CHANGUITO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (56, N'PANDA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (57, N'DEA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (58, N'FIBRAN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (59, N'NAZAR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (60, N'MISTER TRAPO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (61, N'SAN JORGE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (62, N'MARISCAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (63, N'ASCAR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (64, N'SEIKO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (65, N'BATUQUE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (66, N'REGUD', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (67, N'EXQUISITA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (68, N'AGUILA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (69, N'GODET', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (70, N'MANADA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (71, N'DUCHO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (72, N'ROSCO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (73, N'PACHA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (74, N'MAGNIFICO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (75, N'NEME', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (76, N'PRESTO PRONTA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (77, N'CAMPO LINDO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (78, N'GUAYMALLEN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (79, N'TURIMAR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (80, N'LA RECOBA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (81, N'RENFOR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (82, N'GRANDOTA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (83, N'TUKI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (84, N'DON SATUR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (85, N'OBLIBON', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (86, N'ALKA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (87, N'BUTTER TOFFES', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (88, N'FLYN PAFF', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (89, N'ARCOR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (90, N'MARENGO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (91, N'BILLIKEN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (92, N'BULLDOG', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (93, N'MISKY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (94, N'DROSPY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (95, N'OPEN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (96, N'PALITO DE LA SELVA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (97, N'YUM YUM', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (98, N'SKARCHITO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (99, N'FIERITA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (100, N'FULL MANI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (101, N'GEORGALOS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (102, N'KROOMY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (103, N'BOLA LOCA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (104, N'COSMO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (105, N'POP EVOLUTION', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (106, N'OBLITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (107, N'CHOCOLINA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (108, N'DESFILE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (109, N'FAUNA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (110, N'MANA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (111, N'MAURI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (112, N'OREO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (113, N'TRIO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (114, N'PEQUELINO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (115, N'PEPITOS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (116, N'POLVORITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (117, N'MERENGADAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (118, N'SONRISA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (119, N'SOLITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (120, N'LEGENDARIA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (121, N'ZUPAY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (122, N'LINCOLN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (123, N'VOCACION', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (124, N'GOMUTCHO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (125, N'YUMY', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (126, N'GONGYS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (127, N'HAMLET', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (128, N'LOQUITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (129, N'YIPI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (130, N'PIPAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (131, N'SAPITO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (132, N'RIERA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (133, N'INSUGA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (134, N'LV', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (135, N'CAÑUELA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (136, N'FLORENCIA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (137, N'PAMPEANA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (138, N'PUREZA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (139, N'SAN IGNACIO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (140, N'SERIE BLANCA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (141, N'MULTIPLE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (142, N'PARALEVA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (143, N'DESAFIO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (144, N'TAIYO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (145, N'JACARANDA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (146, N'LA VIRGINIA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (147, N'BROCHE DE ORO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (148, N'LA HOJA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (149, N'LA MORENITA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (150, N'SABROSA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (151, N'ODEX', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (152, N'EFECTO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (153, N'RAID', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (154, N'ALLEMANDI', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (155, N'ARGENTINO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (156, N'QSENS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (157, N'HINDS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (158, N'LUX', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (159, N'PLUSBELLE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (160, N'ST TROPEZ', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (161, N'BAGGIO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (162, N'BIG C', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (163, N'DOBLE COLA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (164, N'MANAOS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (165, N'MIRINDA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (166, N'RAFTING', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (167, N'AYUDIN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (168, N'X5', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (169, N'HARPIC', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (170, N'BELAROM', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (171, N'FACILIM', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (172, N'FELPITA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (173, N'VUAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (174, N'SUAPEL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (175, N'CAUTIVA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (176, N'CAUTIVA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (177, N'DONCELLA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (178, N'EJEMPLAR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (179, N'CALIPSO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (180, N'ORAL B', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (181, N'ISSUE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (182, N'LEAUVIVE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (183, N'TADIBELL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (184, N'GOLF', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (185, N'JARDIN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (186, N'HEAD SHOULDERS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (187, N'LADY SOFT', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (188, N'PANTENE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (189, N'PLUSBELLE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (190, N'COBRA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (191, N'CALIPSO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (192, N'RADIANT', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (193, N'SEDAL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (194, N'SUAVE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (195, N'HADIBELL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (196, N'VERITAS', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (197, N'BELABIN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (198, N'KIMBIES', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (199, N'HUGGIES', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (200, N'COSTELLO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (201, N'TULIN', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (202, N'BROCHE DE ORO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (203, N'DEL NOR', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (204, N'CBSE', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (205, N'PIPER POL', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (206, N'AGUANTADORA', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (207, N'SINCERIDAD', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (208, N'SECADERO', 1)
GO
INSERT [dbo].[Marca] ([MarcaId], [Nombre], [Activo]) VALUES (209, N'AMANDA', 1)
GO
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Moneda] ON 
GO
INSERT [dbo].[Moneda] ([MonedaId], [Nombre], [Activo]) VALUES (1, N'ARS', 1)
GO
INSERT [dbo].[Moneda] ([MonedaId], [Nombre], [Activo]) VALUES (2, N'USD', 1)
GO
SET IDENTITY_INSERT [dbo].[Moneda] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON 
GO
INSERT [dbo].[Perfil] ([PerfilId], [Nombre], [Activo]) VALUES (1, N'Administracion', 1)
GO
INSERT [dbo].[Perfil] ([PerfilId], [Nombre], [Activo]) VALUES (2, N'Caja', 1)
GO
INSERT [dbo].[Perfil] ([PerfilId], [Nombre], [Activo]) VALUES (3, N'Preventista', 1)
GO
INSERT [dbo].[Perfil] ([PerfilId], [Nombre], [Activo]) VALUES (4, N'Desarrollo', 1)
GO
SET IDENTITY_INSERT [dbo].[Perfil] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonaTipo] ON 
GO
INSERT [dbo].[PersonaTipo] ([PersonaTipoId], [Nombre], [Activo]) VALUES (1, N'Física', 1)
GO
INSERT [dbo].[PersonaTipo] ([PersonaTipoId], [Nombre], [Activo]) VALUES (2, N'Jurídica', 1)
GO
SET IDENTITY_INSERT [dbo].[PersonaTipo] OFF
GO
SET IDENTITY_INSERT [dbo].[PrecioLista] ON 
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (1, 1, NULL, 1, CAST(193.60 AS Decimal(18, 2)), CAST(176.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.347' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (2, 1, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:34:36.993' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (3, 1, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:34:36.993' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (4, 1, NULL, 4, CAST(148.90 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-04T11:51:01.180' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (5, 1, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:34:36.993' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (6, 1, NULL, 6, CAST(162.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-04T11:51:44.307' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (7, 1, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:34:37.007' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (8, 1, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:34:37.007' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (9, 2, NULL, 1, CAST(193.60 AS Decimal(18, 2)), CAST(176.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.347' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (10, 2, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:55:34.773' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (11, 2, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:55:34.790' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (12, 2, NULL, 4, CAST(148.90 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-04T11:58:33.180' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (13, 2, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:55:34.867' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (14, 2, NULL, 6, CAST(162.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-04T11:58:45.493' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (15, 2, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:55:34.930' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (16, 2, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T11:55:34.930' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (17, NULL, 1, 1, CAST(534.60 AS Decimal(18, 2)), CAST(486.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.347' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (18, NULL, 1, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.040' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (19, NULL, 1, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.040' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (20, NULL, 1, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.040' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (21, NULL, 1, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (22, NULL, 1, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (23, NULL, 1, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (24, NULL, 1, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-04T12:00:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (25, 3, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.347' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (26, 3, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.123' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (27, 3, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.140' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (28, 3, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.170' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (29, 3, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.187' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (30, 3, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.217' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (31, 3, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.267' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (32, 3, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:00:51.313' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (33, 4, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (34, 4, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.657' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (35, 4, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.657' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (36, 4, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.703' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (37, 4, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.750' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (38, 4, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.767' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (39, 4, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.797' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (40, 4, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T10:59:34.813' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (41, 5, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (42, 5, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.670' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (43, 5, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.733' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (44, 5, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.767' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (45, 5, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.813' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (46, 5, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.857' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (47, 5, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.953' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (48, 5, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:00:54.983' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (49, 6, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (50, 6, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:22.813' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (51, 6, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:22.873' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (52, 6, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:22.890' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (53, 6, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:22.967' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (54, 6, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:23.030' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (55, 6, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:23.123' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (56, 6, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T11:02:23.187' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (57, 7, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (58, 7, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.607' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (59, 7, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.733' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (60, 7, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.767' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (61, 7, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.813' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (62, 7, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.857' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (63, 7, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.953' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (64, 7, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:04:29.967' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (65, 8, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (66, 8, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.000' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (67, 8, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.000' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (68, 8, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.047' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (69, 8, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.093' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (70, 8, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.123' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (71, 8, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.140' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (72, 8, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T12:13:10.217' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (73, 9, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (74, 9, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.370' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (75, 9, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.370' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (76, 9, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.370' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (77, 9, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (78, 9, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (79, 9, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (80, 9, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:46:13.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (81, 10, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (82, 10, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.917' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (83, 10, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.963' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (84, 10, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.963' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (85, 10, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.980' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (86, 10, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.980' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (87, 10, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:38.997' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (88, 10, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:49:39.043' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (89, 11, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (90, 11, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.370' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (91, 11, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (92, 11, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (93, 11, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (94, 11, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (95, 11, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (96, 11, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T18:56:56.387' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (97, 12, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.363' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (98, 12, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:52.997' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (99, 12, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.027' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (100, 12, NULL, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.027' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (101, 12, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (102, 12, NULL, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (103, 12, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.057' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (104, 12, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-06T19:11:53.073' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (105, NULL, 2, 1, CAST(174.24 AS Decimal(18, 2)), CAST(158.40 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.380' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (106, NULL, 2, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.147' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (107, NULL, 2, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.147' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (108, NULL, 2, 4, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.147' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (109, NULL, 2, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.160' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (110, NULL, 2, 6, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.160' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (111, NULL, 2, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-08-27T20:01:07.160' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (112, NULL, 2, 8, CAST(158.40 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-27T20:01:54.223' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (113, 13, NULL, 1, CAST(4.40 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(N'2022-08-19T15:57:17.380' AS DateTime), 1, 2, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (114, 13, NULL, 2, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-09-18T09:57:26.270' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (115, 13, NULL, 3, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-09-18T09:57:26.287' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (116, 13, NULL, 4, CAST(3.75 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-09-18T09:58:32.300' AS DateTime), 1, 2, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (117, 13, NULL, 5, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-09-18T09:57:26.333' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (118, 13, NULL, 6, CAST(3.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-09-18T09:58:47.990' AS DateTime), 1, 2, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (119, 13, NULL, 7, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-09-18T09:57:26.410' AS DateTime), 0, 1, 1)
GO
INSERT [dbo].[PrecioLista] ([PrecioListaId], [ProductoId], [ComboId], [ListaId], [Precio], [PrecioAnterior], [Fecha], [Cargado], [MonedaId], [Activo]) VALUES (120, 13, NULL, 8, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'2021-09-18T09:57:26.410' AS DateTime), 0, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[PrecioLista] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (1, 1, 1, 1, N'GATORADE 1.25 L. NARANJA', CAST(131.75 AS Decimal(18, 2)), CAST(N'2021-08-04T11:34:36.477' AS DateTime), CAST(N'2021-08-04T11:34:36.477' AS DateTime), 60, N'7792170110551', 1, 1)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (2, 1, 1, 1, N'GATORADE 1.25 L. MANZANA', CAST(131.75 AS Decimal(18, 2)), CAST(N'2021-08-04T11:55:34.603' AS DateTime), CAST(N'2021-08-04T11:55:34.603' AS DateTime), 60, N'7792170110575', 1, 1)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (3, 3, 1, 6, N'ACEITE COSTAS DEL SOL X900 ML', CAST(166.38 AS Decimal(18, 2)), CAST(N'2021-08-06T10:00:50.483' AS DateTime), CAST(N'2021-08-06T10:00:50.483' AS DateTime), 60, N' 7793065000117', 1, 33)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (4, 3, 1, 7, N'ACEITE SOLEIL X4.5 LT', CAST(706.63 AS Decimal(18, 2)), CAST(N'2021-08-06T10:59:33.657' AS DateTime), CAST(N'2021-08-06T10:59:33.657' AS DateTime), 16, N'7798143131165', 1, 2)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (5, 4, 1, 8, N'VINAGRE HALCONERO X 1LT', CAST(43.27 AS Decimal(18, 2)), CAST(N'2021-08-06T11:00:54.530' AS DateTime), CAST(N'2021-08-06T11:00:54.530' AS DateTime), 60, N'7796504000877', 1, 10)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (6, 4, 1, 9, N'VINAGRE FRAU X950 ML', CAST(42.77 AS Decimal(18, 2)), CAST(N'2021-08-06T11:02:22.623' AS DateTime), CAST(N'2021-08-06T11:02:22.623' AS DateTime), 30, N'7795422002109', 1, 10)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (7, 5, 1, 10, N'MOSTAZA DANICA X 3 KG', CAST(194.67 AS Decimal(18, 2)), CAST(N'2021-08-06T12:04:28.420' AS DateTime), CAST(N'2021-08-06T12:04:28.420' AS DateTime), 30, N'7791620187297', 1, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (8, 5, 1, 10, N'MOSTAZA DANICA X220 GR', CAST(11.24 AS Decimal(18, 2)), CAST(N'2021-08-06T12:13:09.767' AS DateTime), CAST(N'2021-08-06T12:13:09.767' AS DateTime), 60, N'7791620187280', 1, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (9, 5, 1, 10, N'KETCHUP DANICA 3KG', CAST(276.23 AS Decimal(18, 2)), CAST(N'2021-08-06T18:46:12.400' AS DateTime), CAST(N'2021-08-06T18:50:20.793' AS DateTime), 100, N'7791620187259', 1, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (10, 5, 1, 10, N'KETCHUP DANICA X 60 MLG', CAST(11.43 AS Decimal(18, 2)), CAST(N'2021-08-06T18:49:38.793' AS DateTime), CAST(N'2021-08-06T18:49:38.793' AS DateTime), 100, N'77791620187234', 1, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (11, 5, 1, 10, N'MOSTAZA DANICA 60 G', CAST(8.56 AS Decimal(18, 2)), CAST(N'2021-08-06T18:56:56.353' AS DateTime), CAST(N'2021-08-06T18:56:56.353' AS DateTime), 100, N'77791620187272', 0, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (12, 5, 1, 10, N'KETCHUP DANICA X 220 G', CAST(28.65 AS Decimal(18, 2)), CAST(N'2021-08-06T19:11:52.840' AS DateTime), CAST(N'2021-08-06T19:11:52.840' AS DateTime), 100, N'7791620187242', 1, 37)
GO
INSERT [dbo].[Producto] ([ProductoId], [TipoProductoId], [TipoDuracionId], [MarcaId], [Nombre], [PrecioCosto], [FechaAlta], [FechaModificacion], [Minimo], [Codigo], [Activo], [ProveedorId]) VALUES (13, 43, 2, 209, N'PEN DRIVE 8G', CAST(500.00 AS Decimal(18, 2)), CAST(N'2021-09-18T09:57:25.660' AS DateTime), CAST(N'2021-09-18T09:57:25.660' AS DateTime), 50, N'5', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (1, N'C D PARQUE', N'Av. Gral Savio SN, Manzana Abcda Parque indistrial, La Banda', CAST(N'2021-08-04T11:26:52.680' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (2, N'AGRO ACEITERA CORDOBA', N'San Juan 526 Santa Catalina', CAST(N'2021-08-05T16:46:46.817' AS DateTime), 1, 4990900, N'info@aacsa.com.ar')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (3, N'DISTRIBUIDORA CHAMIGO', N'Calle lateral SN circunvalacion Av belgrano', CAST(N'2021-08-05T16:49:15.870' AS DateTime), 1, 154022164, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (4, N'EMAPE S.R.L', N'Antenor alvarez 1407', CAST(N'2021-08-05T17:03:47.410' AS DateTime), 1, 4370976, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (5, N'LUKOSKY SRL', N'Lote 14 chacra 6', CAST(N'2021-08-05T17:08:46.973' AS DateTime), 1, 4498066, N'ventasluk@lukoski.com.ar')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (6, N'LA CACHUERA SA', N'lote 280 apostoles 3350 misiones', CAST(N'2021-08-05T17:14:37.003' AS DateTime), 1, 422724, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (7, N'AUTOSERVICIO MAYORISTA DIARCO SA', N'Ruta nacional Nº km 1141 y rot RN 64', CAST(N'2021-08-05T17:20:45.493' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (8, N'DIMOL SRL', N'COLON sur 1325', CAST(N'2021-08-05T17:28:00.177' AS DateTime), 1, 4213072, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (9, N'INSUGA S.A', N'Ruta 70 KM 2  recreo santa fe', CAST(N'2021-08-05T17:41:58.033' AS DateTime), 1, 4960011, N'insuga@insuga.com.ar')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (10, N'MI ALMA', N'24 DE SEPTIEMBRE 146', CAST(N'2021-08-05T17:43:54.863' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (11, N'MOLINOS FLORENCIA', N'25 DE mAYO 275', CAST(N'2021-08-05T17:49:37.190' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (12, N'LA PIAMONTESA SA', N'PCIA DE CORDOBA', CAST(N'2021-08-05T17:58:26.000' AS DateTime), 1, 3562480142, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (13, N'EL GRINGO LOPEZ', NULL, CAST(N'2021-08-05T17:58:45.520' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (14, N'LAPRIDA', NULL, CAST(N'2021-08-05T17:59:16.067' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (15, N'MANFREY', N'aLBERDI', CAST(N'2021-08-05T18:00:24.503' AS DateTime), 1, 4270230, N'STGODELESTERO@MANFREY.COM.AR')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (16, N'MAREGA', NULL, CAST(N'2021-08-05T18:00:56.770' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (17, N'MARIO RETA', NULL, CAST(N'2021-08-05T18:01:14.003' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (18, N'MAXIMA', N'RIO NEGRO 455', CAST(N'2021-08-05T18:02:13.533' AS DateTime), 1, 4218643, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (19, N'MERISANT', NULL, CAST(N'2021-08-05T18:02:31.910' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (20, N'NEME', NULL, CAST(N'2021-08-05T18:05:10.317' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (21, N'O GLOBO', NULL, CAST(N'2021-08-05T18:05:36.940' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (22, N'MOHAR SA', N'GENERAL PAZ 301', CAST(N'2021-08-05T18:06:57.973' AS DateTime), 1, 466614, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (23, N'PURISIMA', NULL, CAST(N'2021-08-05T18:08:31.597' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (24, N'DON JUAN', NULL, CAST(N'2021-08-05T18:09:07.723' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (25, N'RIVOLI', NULL, CAST(N'2021-08-05T18:09:30.270' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (26, N'RAULITO', NULL, CAST(N'2021-08-05T18:09:54.223' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (27, N'ROMERO OSCAR ALEJANDRO', N'SAN LORENZO 451', CAST(N'2021-08-05T18:10:45.737' AS DateTime), 1, 3854276870, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (28, N'SIMON HNOS SA', N'BESARES 2201', CAST(N'2021-08-05T18:12:01.503' AS DateTime), 1, 4270052, N'TIONICO@ARNET.COM.AR')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (29, N'KISKALI', N'PARQUE INDUSTRIAL PARQUE', CAST(N'2021-08-05T18:13:08.190' AS DateTime), 1, 2304496613, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (30, N'VALENA', NULL, CAST(N'2021-08-05T18:13:29.863' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (31, N'VERITAS', NULL, CAST(N'2021-08-05T18:13:46.927' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (32, N'VILLA RICA', NULL, CAST(N'2021-08-05T18:14:16.330' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (33, N'MITRE HUGO', NULL, CAST(N'2021-08-05T18:14:37.050' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (34, N'YATAY', NULL, CAST(N'2021-08-05T18:14:51.660' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (35, N'SECADERO', NULL, CAST(N'2021-08-05T18:15:49.830' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (36, N'YERBA CBSE', NULL, CAST(N'2021-08-05T18:16:03.440' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (37, N'TODO PAN SRL', N'TUCUMAN', CAST(N'2021-08-05T18:29:11.893' AS DateTime), 1, 4363384, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (38, N'MASIDE SRL', N'COLON 960 TUCUMAN', CAST(N'2021-08-05T18:29:57.660' AS DateTime), 1, 3814363384, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (39, N'DANI CHEIN', NULL, CAST(N'2021-08-05T18:32:44.207' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (40, N'LA CASA DE LA GOLOSINA', NULL, CAST(N'2021-08-05T18:33:03.223' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Direccion], [FechaCreacion], [Activo], [Telefono], [Email]) VALUES (41, N'RICARDO VONZEILAO', NULL, CAST(N'2021-08-05T19:22:45.927' AS DateTime), 1, NULL, N'notiene@soria.com')
GO
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Remito] ON 
GO
INSERT [dbo].[Remito] ([RemitoId], [ClienteId], [VentaId], [Fecha], [Domicilio], [TransportistaId], [CUIT], [Observaciones], [UsuarioId], [FechaCreacion], [Activo]) VALUES (1, 2, 1, N'08-27-2021', N'Calle 109 N°2933 entre 17 y 18', 1, N'20-26570331-9', NULL, 6, CAST(N'2021-08-27T20:24:58.083' AS DateTime), 1)
GO
INSERT [dbo].[Remito] ([RemitoId], [ClienteId], [VentaId], [Fecha], [Domicilio], [TransportistaId], [CUIT], [Observaciones], [UsuarioId], [FechaCreacion], [Activo]) VALUES (1001, 1, 1003, N'05-30-2022', N'Ruta 93-1095- La banda', 1, N'20-18524476-9', NULL, 1, CAST(N'2022-05-30T12:05:44.660' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Remito] OFF
GO
SET IDENTITY_INSERT [dbo].[StockDeposito] ON 
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (1, 1, 1, 1, NULL, CAST(-3.00 AS Decimal(18, 2)), CAST(N'2022-08-19T16:03:40.270' AS DateTime), CAST(-4.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (2, 1, 1, 2, NULL, CAST(80.00 AS Decimal(18, 2)), CAST(N'2022-08-19T16:03:40.427' AS DateTime), CAST(76.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (3, 1, 2, NULL, 1, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-04T12:00:53.087' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (4, 1, 1, 3, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T10:00:51.407' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (5, 1, 1, 4, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T10:59:34.890' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (6, 1, 1, 5, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T11:00:55.030' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (7, 1, 1, 6, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T11:02:23.313' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (8, 1, 1, 7, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T12:04:30.017' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (9, 1, 1, 8, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T12:13:10.297' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (10, 1, 1, 9, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T18:50:21.010' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (11, 1, 1, 10, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T18:49:39.103' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (12, 1, 1, 11, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T18:56:56.400' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (13, 1, 1, 12, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-06T19:11:53.103' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (14, 1, 2, NULL, 2, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-08-27T20:01:07.317' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[StockDeposito] ([StockDepositoId], [DepositoId], [TipoStockId], [ProductoId], [ComboId], [Cantidad], [FechaActualizacion], [CantidadUsada], [Activo]) VALUES (15, 1, 1, 13, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-09-18T09:57:26.427' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[StockDeposito] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON 
GO
INSERT [dbo].[Sucursal] ([SucursalId], [Nombre], [Direccion], [Activo]) VALUES (1, N'Sucursal 1', N'Direccion 1', 1)
GO
INSERT [dbo].[Sucursal] ([SucursalId], [Nombre], [Direccion], [Activo]) VALUES (2, N'Sucursal 2', N'Direcc 2', 1)
GO
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCobro] ON 
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (1, N'EFECTIVO', 1)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (2, N'TARJETA DEBITO', 1)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (3, N'TARJETA CRÉDITO', 1)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (4, N'CUENTA CORRIENTE', 0)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (5, N'CHEQUE', 1)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (6, N'TRANSFERENCIA BANCARIA', 1)
GO
INSERT [dbo].[TipoCobro] ([TipoCobroId], [Nombre], [Activo]) VALUES (7, N'OTROS', 0)
GO
SET IDENTITY_INSERT [dbo].[TipoCobro] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDuracion] ON 
GO
INSERT [dbo].[TipoDuracion] ([TipoDuracionId], [Nombre], [Activo]) VALUES (1, N'Perecedero', 1)
GO
INSERT [dbo].[TipoDuracion] ([TipoDuracionId], [Nombre], [Activo]) VALUES (2, N'No Perecedero', 1)
GO
SET IDENTITY_INSERT [dbo].[TipoDuracion] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (1, N'BEBIDAS SIN ALCOHOL', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (2, N'BEBIDAS CON ALCOHOL', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (3, N'ACEITE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (4, N'VINAGRE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (5, N'ADEREZOS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (6, N'ARROZ', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (7, N'FIDEO', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (8, N'POLENTA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (9, N'AZUCAR', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (10, N'EDULCORANTE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (11, N'BAZAR', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (12, N'CONDIMENTOS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (13, N'SALES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (14, N'CREMA DENTAL', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (15, N'DETERGENTES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (16, N'DULCE DE LECHE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (17, N'MERMELADAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (18, N'ENLATADOS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (19, N'LIMPIEZA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (20, N'ESPONJAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (21, N'FIAMBRES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (22, N'BIZCOCHUELOS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (23, N'FORRAJERIA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (24, N'GALLETAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (25, N'CARAMELOS DUROS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (26, N'CHUPETINES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (27, N'CHOCOLATE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (28, N'GRASA BOVINA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (29, N'HARINA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (30, N'ENCENDEDOR', 0)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (31, N'INFUSIONES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (32, N'INSECTICIDAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (33, N'JABON Y SUAVIZANTES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (34, N'JABON TOCADOR', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (35, N'LAVANDINA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (36, N'LIMPIEZA BAÑOS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (37, N'LUSTRAMUEBLES', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (38, N'PAPELES HIGIENICOS Y SEVILLETAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (39, N'PERFUMERIA', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (40, N'PURE DE TOMATE', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (41, N'SNACK', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (42, N'REPOSTERIA Y COTILLON', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (43, N'YERBAS', 1)
GO
INSERT [dbo].[TipoProducto] ([TipoProductoId], [Nombre], [Activo]) VALUES (44, N'HOGAR Y OTROS', 1)
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoStock] ON 
GO
INSERT [dbo].[TipoStock] ([TipoStockId], [Nombre], [Activo]) VALUES (1, N'Producto', 1)
GO
INSERT [dbo].[TipoStock] ([TipoStockId], [Nombre], [Activo]) VALUES (2, N'Combo', 1)
GO
SET IDENTITY_INSERT [dbo].[TipoStock] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoVenta] ON 
GO
INSERT [dbo].[TipoVenta] ([TipoVentaId], [Nombre], [Activo]) VALUES (1, N'Preventista', 1)
GO
INSERT [dbo].[TipoVenta] ([TipoVentaId], [Nombre], [Activo]) VALUES (2, N'Caja', 1)
GO
INSERT [dbo].[TipoVenta] ([TipoVentaId], [Nombre], [Activo]) VALUES (3, N'Administracion', 1)
GO
SET IDENTITY_INSERT [dbo].[TipoVenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Transportista] ON 
GO
INSERT [dbo].[Transportista] ([TransportistaId], [Nombre], [Apellido], [MontoAcumulado], [FechaUltimoTransporte], [Activo]) VALUES (1, N'PABLO', N'COSTILLA', NULL, CAST(N'2022-05-30T12:05:44.830' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Transportista] OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioReferencia] ON 
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (1, N'f4bb1838-320a-438b-8d23-a7004f04d4d5', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (2, N'c59bf4f2-d472-450e-94be-c3e1f5233925', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (3, N'd34230d3-1167-4d71-8b35-c17cf2a18407', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (4, N'edef7532-5238-48ec-be90-dc28ebdcf68b', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (5, N'f58d375f-46f9-43ed-bcc5-9f9d4c9bd5b9', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (6, N'0a93bb1a-c10d-4781-b1ef-f340a6c5159d', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (7, N'a7ede6d1-ac24-4496-8a8a-d17c9b01e5db', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (8, N'5f26885a-05ad-4182-b79e-84a0e31e7495', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (9, N'e42d40c5-0f94-495f-b25b-88dd66d3e20b', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (10, N'a2e5b1d8-be1a-4e75-9f4e-7fa7b5346bec', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (11, N'd2d0dee6-91c9-49ba-afd3-8bf1f83591f3', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (12, N'c526ff8a-5a4b-4150-9ead-8c69b8f110f2', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (13, N'2791f20e-f381-4313-a8ab-0bd052cd95be', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (14, N'081ae423-2026-4180-bf37-806c6887eb2a', 1)
GO
INSERT [dbo].[UsuarioReferencia] ([UsuarioRefId], [AspNetUsersId], [Activo]) VALUES (15, N'6a3e99f1-d86e-4112-b0d7-678d7c481513', 1)
GO
SET IDENTITY_INSERT [dbo].[UsuarioReferencia] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1, 1, 1, 2, 1, CAST(9720.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(9720.00 AS Decimal(18, 2)), CAST(N'2021-08-27T20:22:26.287' AS DateTime), CAST(N'2021-08-27T20:28:06.787' AS DateTime), NULL, N'Calle 109 N°2933 entre 17 y 18', NULL, 0, 4, NULL, NULL, 1, 2, CAST(0.00 AS Decimal(18, 2)), NULL, 11)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1001, 1, 1, 2, 1, CAST(162.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)), CAST(N'2022-04-07T13:54:02.083' AS DateTime), NULL, NULL, N'Calle 109 N°2933 entre 17 y 18', NULL, 1, 2, NULL, NULL, 1, 2, CAST(0.00 AS Decimal(18, 2)), NULL, 11)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1002, 3, 1, 1, 1, CAST(176.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(176.00 AS Decimal(18, 2)), CAST(N'2022-05-30T12:01:24.033' AS DateTime), CAST(N'2022-05-30T12:04:59.550' AS DateTime), NULL, N'Ruta 93-1095- La banda', NULL, 0, 4, NULL, NULL, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1003, 3, 1, 1, 1, CAST(1760.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1760.00 AS Decimal(18, 2)), CAST(N'2022-05-30T12:03:23.550' AS DateTime), CAST(N'2022-05-30T12:06:41.080' AS DateTime), NULL, NULL, NULL, 0, 4, NULL, NULL, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1004, 2, 1, NULL, 1, CAST(8800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(8800.00 AS Decimal(18, 2)), CAST(N'2022-05-30T12:11:14.847' AS DateTime), NULL, NULL, NULL, NULL, 0, 4, NULL, 1001, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1005, 2, 1, 1, 1, CAST(176.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(176.00 AS Decimal(18, 2)), CAST(N'2022-05-30T12:11:37.207' AS DateTime), NULL, NULL, NULL, NULL, 0, 4, NULL, 1001, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Venta] ([VentaId], [TipoVentaId], [SucursalId], [ClienteId], [TipoCobroId], [Total], [Descuento], [Final], [Fecha], [FechaModificacion], [Observaciones], [DireccionEnvio], [CostoEnvio], [Pendiente], [EstadoId], [Recargo], [ArqueoId], [Activo], [UsuarioId], [Promos], [NotaCreditoMonto], [PreventistaId]) VALUES (1006, 3, 1, NULL, 1, CAST(728.20 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(728.20 AS Decimal(18, 2)), CAST(N'2022-08-19T16:03:40.427' AS DateTime), NULL, NULL, NULL, NULL, 1, 2, NULL, 1001, 1, 1, CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET IDENTITY_INSERT [dbo].[VentaDetalle] ON 
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1, 1, 6, 1, NULL, CAST(60.00 AS Decimal(18, 2)), N'162', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1001, 1001, 6, 2, NULL, CAST(1.00 AS Decimal(18, 2)), N'162', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1002, 1002, 1, 1, NULL, CAST(1.00 AS Decimal(18, 2)), N'176', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1003, 1003, 1, 1, NULL, CAST(10.00 AS Decimal(18, 2)), N'176', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1004, 1004, 1, 1, NULL, CAST(50.00 AS Decimal(18, 2)), N'176', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1005, 1005, 1, 1, NULL, CAST(1.00 AS Decimal(18, 2)), N'176', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1006, 1006, 1, 1, NULL, CAST(1.00 AS Decimal(18, 2)), N'193,6', 1, 1)
GO
INSERT [dbo].[VentaDetalle] ([VentaDetalleId], [VentaId], [ListaId], [ProductoId], [ComboId], [Cantidad], [Precio], [MonedaId], [Activo]) VALUES (1007, 1006, 1, NULL, 1, CAST(1.00 AS Decimal(18, 2)), N'534,6', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[VentaDetalle] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 31/01/2023 16:20:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 31/01/2023 16:20:27 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 31/01/2023 16:20:27 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 31/01/2023 16:20:27 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 31/01/2023 16:20:27 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 31/01/2023 16:20:27 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActualizacionStock] ADD  CONSTRAINT [DF_ActualizacionStock_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Anio] ADD  CONSTRAINT [DF_Anio_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Arqueo] ADD  CONSTRAINT [DF_Arqueo_Abierto]  DEFAULT ((0)) FOR [Abierto]
GO
ALTER TABLE [dbo].[Arqueo] ADD  CONSTRAINT [DF_Arqueo_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ArqueoTipo] ADD  CONSTRAINT [DF_ArqueoTipo_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ArqueoVenta] ADD  CONSTRAINT [DF_ArqueoVenta_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Combo] ADD  CONSTRAINT [DF_Combo_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ComboProducto] ADD  CONSTRAINT [DF_ComboProducto_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CondicionIVA] ADD  CONSTRAINT [DF_CondicionIVA_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Deposito] ADD  CONSTRAINT [DF_Deposito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Egreso] ADD  CONSTRAINT [DF_Egreso_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Estado] ADD  CONSTRAINT [DF_Estado_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Factura] ADD  CONSTRAINT [DF_Factura_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Factura] ADD  CONSTRAINT [DF_Factura_Realizada]  DEFAULT ((0)) FOR [Realizada]
GO
ALTER TABLE [dbo].[Lista] ADD  CONSTRAINT [DF_Lista_RecargoGeneral]  DEFAULT ((0)) FOR [RecargoGeneral]
GO
ALTER TABLE [dbo].[Lista] ADD  CONSTRAINT [DF_Lista_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Marca] ADD  CONSTRAINT [DF_Marca_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Moneda] ADD  CONSTRAINT [DF_Moneda_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NotaCredito] ADD  CONSTRAINT [DF_NotaCredito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[NotaCreditoDetalle] ADD  CONSTRAINT [DF_NotaCreditoDetalle_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Perfil] ADD  CONSTRAINT [DF_Perfil_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PerfilUsuario] ADD  CONSTRAINT [DF_PerfilUsuario_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PersonaTipo] ADD  CONSTRAINT [DF_PersonaTipo_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[PrecioLista] ADD  CONSTRAINT [DF_PrecioLista_Cargado]  DEFAULT ((1)) FOR [Cargado]
GO
ALTER TABLE [dbo].[PrecioLista] ADD  CONSTRAINT [DF_PrecioLista_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Producto] ADD  CONSTRAINT [DF_Producto_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Proveedor] ADD  CONSTRAINT [DF_Proveedor_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Remito] ADD  CONSTRAINT [DF_Remito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[StockDeposito] ADD  CONSTRAINT [DF_StockDeposito_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Sucursal] ADD  CONSTRAINT [DF_Sucursal_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[SucursalUsuario] ADD  CONSTRAINT [DF_SucursalUsuario_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TipoCobro] ADD  CONSTRAINT [DF_TipoCobro_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TipoDuracion] ADD  CONSTRAINT [DF_TipoDuracion_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TipoProducto] ADD  CONSTRAINT [DF_TipoProducto_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TipoStock] ADD  CONSTRAINT [DF_TipoStock_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TipoVenta] ADD  CONSTRAINT [DF_TipoVenta_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Transportista] ADD  CONSTRAINT [DF_Transportista_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[UsuarioReferencia] ADD  CONSTRAINT [DF_UsuarioReferencia_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Venta] ADD  CONSTRAINT [DF_Venta_Pendiente]  DEFAULT ((0)) FOR [Pendiente]
GO
ALTER TABLE [dbo].[Venta] ADD  CONSTRAINT [DF_Venta_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[VentaDetalle] ADD  CONSTRAINT [DF_VentaDetalle_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ActualizacionStock]  WITH CHECK ADD  CONSTRAINT [FK_ActualizacionStock_UsuarioReferencia] FOREIGN KEY([UsuarioReferenciaId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[ActualizacionStock] CHECK CONSTRAINT [FK_ActualizacionStock_UsuarioReferencia]
GO
ALTER TABLE [dbo].[Arqueo]  WITH CHECK ADD  CONSTRAINT [FK_Arqueo_ArqueoTipo] FOREIGN KEY([ArqueoTipoId])
REFERENCES [dbo].[ArqueoTipo] ([ArqueoTipoId])
GO
ALTER TABLE [dbo].[Arqueo] CHECK CONSTRAINT [FK_Arqueo_ArqueoTipo]
GO
ALTER TABLE [dbo].[ArqueoVenta]  WITH CHECK ADD  CONSTRAINT [FK_ArqueoVenta_Arqueo] FOREIGN KEY([ArqueoId])
REFERENCES [dbo].[Arqueo] ([ArqueoId])
GO
ALTER TABLE [dbo].[ArqueoVenta] CHECK CONSTRAINT [FK_ArqueoVenta_Arqueo]
GO
ALTER TABLE [dbo].[ArqueoVenta]  WITH CHECK ADD  CONSTRAINT [FK_ArqueoVenta_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[ArqueoVenta] CHECK CONSTRAINT [FK_ArqueoVenta_Venta]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Perfil] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfil] ([PerfilId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Perfil]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Sucursal] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Sucursal]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_UsuarioReferencia]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_CondicionIVA] FOREIGN KEY([CondicionIVAId])
REFERENCES [dbo].[CondicionIVA] ([CondicionIVAId])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_CondicionIVA]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_PersonaTipo] FOREIGN KEY([PersonaTipoId])
REFERENCES [dbo].[PersonaTipo] ([PersonaTipoId])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_PersonaTipo]
GO
ALTER TABLE [dbo].[ComboProducto]  WITH CHECK ADD  CONSTRAINT [FK_ComboProducto_Combo] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
GO
ALTER TABLE [dbo].[ComboProducto] CHECK CONSTRAINT [FK_ComboProducto_Combo]
GO
ALTER TABLE [dbo].[ComboProducto]  WITH CHECK ADD  CONSTRAINT [FK_ComboProducto_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[ComboProducto] CHECK CONSTRAINT [FK_ComboProducto_Producto]
GO
ALTER TABLE [dbo].[Deposito]  WITH CHECK ADD  CONSTRAINT [FK_Deposito_Sucursal] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[Deposito] CHECK CONSTRAINT [FK_Deposito_Sucursal]
GO
ALTER TABLE [dbo].[Egreso]  WITH CHECK ADD  CONSTRAINT [FK_Egreso_Arqueo] FOREIGN KEY([ArqueoId])
REFERENCES [dbo].[Arqueo] ([ArqueoId])
GO
ALTER TABLE [dbo].[Egreso] CHECK CONSTRAINT [FK_Egreso_Arqueo]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Venta]
GO
ALTER TABLE [dbo].[Ingreso]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Arqueo] FOREIGN KEY([ArqueoId])
REFERENCES [dbo].[Arqueo] ([ArqueoId])
GO
ALTER TABLE [dbo].[Ingreso] CHECK CONSTRAINT [FK_Ingreso_Arqueo]
GO
ALTER TABLE [dbo].[NotaCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotaCredito_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
GO
ALTER TABLE [dbo].[NotaCredito] CHECK CONSTRAINT [FK_NotaCredito_Cliente]
GO
ALTER TABLE [dbo].[NotaCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotaCredito_Remito] FOREIGN KEY([RemitoId])
REFERENCES [dbo].[Remito] ([RemitoId])
GO
ALTER TABLE [dbo].[NotaCredito] CHECK CONSTRAINT [FK_NotaCredito_Remito]
GO
ALTER TABLE [dbo].[NotaCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotaCredito_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[NotaCredito] CHECK CONSTRAINT [FK_NotaCredito_UsuarioReferencia]
GO
ALTER TABLE [dbo].[NotaCredito]  WITH CHECK ADD  CONSTRAINT [FK_NotaCredito_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[NotaCredito] CHECK CONSTRAINT [FK_NotaCredito_Venta]
GO
ALTER TABLE [dbo].[NotaCreditoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_NotaCreditoDetalle_Combo] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
GO
ALTER TABLE [dbo].[NotaCreditoDetalle] CHECK CONSTRAINT [FK_NotaCreditoDetalle_Combo]
GO
ALTER TABLE [dbo].[NotaCreditoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_NotaCreditoDetalle_NotaCredito] FOREIGN KEY([NotaCreditoId])
REFERENCES [dbo].[NotaCredito] ([NotaCreditoId])
GO
ALTER TABLE [dbo].[NotaCreditoDetalle] CHECK CONSTRAINT [FK_NotaCreditoDetalle_NotaCredito]
GO
ALTER TABLE [dbo].[NotaCreditoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_NotaCreditoDetalle_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[NotaCreditoDetalle] CHECK CONSTRAINT [FK_NotaCreditoDetalle_Producto]
GO
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_Perfil] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfil] ([PerfilId])
GO
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_Perfil]
GO
ALTER TABLE [dbo].[PerfilUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilUsuario_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[PerfilUsuario] CHECK CONSTRAINT [FK_PerfilUsuario_UsuarioReferencia]
GO
ALTER TABLE [dbo].[PrecioLista]  WITH CHECK ADD  CONSTRAINT [FK_PrecioLista_Combo] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
GO
ALTER TABLE [dbo].[PrecioLista] CHECK CONSTRAINT [FK_PrecioLista_Combo]
GO
ALTER TABLE [dbo].[PrecioLista]  WITH CHECK ADD  CONSTRAINT [FK_PrecioLista_Lista] FOREIGN KEY([ListaId])
REFERENCES [dbo].[Lista] ([ListaId])
GO
ALTER TABLE [dbo].[PrecioLista] CHECK CONSTRAINT [FK_PrecioLista_Lista]
GO
ALTER TABLE [dbo].[PrecioLista]  WITH CHECK ADD  CONSTRAINT [FK_PrecioLista_Moneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[Moneda] ([MonedaId])
GO
ALTER TABLE [dbo].[PrecioLista] CHECK CONSTRAINT [FK_PrecioLista_Moneda]
GO
ALTER TABLE [dbo].[PrecioLista]  WITH CHECK ADD  CONSTRAINT [FK_PrecioLista_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[PrecioLista] CHECK CONSTRAINT [FK_PrecioLista_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marca] ([MarcaId])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([ProveedorId])
REFERENCES [dbo].[Proveedor] ([ProveedorId])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoDuracion] FOREIGN KEY([TipoDuracionId])
REFERENCES [dbo].[TipoDuracion] ([TipoDuracionId])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_TipoDuracion]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoProducto] FOREIGN KEY([TipoProductoId])
REFERENCES [dbo].[TipoProducto] ([TipoProductoId])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_TipoProducto]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Cliente]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Transportista] FOREIGN KEY([TransportistaId])
REFERENCES [dbo].[Transportista] ([TransportistaId])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Transportista]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_UsuarioReferencia]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Venta]
GO
ALTER TABLE [dbo].[StockDeposito]  WITH CHECK ADD  CONSTRAINT [FK_StockDeposito_Combo] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
GO
ALTER TABLE [dbo].[StockDeposito] CHECK CONSTRAINT [FK_StockDeposito_Combo]
GO
ALTER TABLE [dbo].[StockDeposito]  WITH CHECK ADD  CONSTRAINT [FK_StockDeposito_Deposito] FOREIGN KEY([DepositoId])
REFERENCES [dbo].[Deposito] ([DepositoId])
GO
ALTER TABLE [dbo].[StockDeposito] CHECK CONSTRAINT [FK_StockDeposito_Deposito]
GO
ALTER TABLE [dbo].[StockDeposito]  WITH CHECK ADD  CONSTRAINT [FK_StockDeposito_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[StockDeposito] CHECK CONSTRAINT [FK_StockDeposito_Producto]
GO
ALTER TABLE [dbo].[StockDeposito]  WITH CHECK ADD  CONSTRAINT [FK_StockDeposito_TipoStock] FOREIGN KEY([TipoStockId])
REFERENCES [dbo].[TipoStock] ([TipoStockId])
GO
ALTER TABLE [dbo].[StockDeposito] CHECK CONSTRAINT [FK_StockDeposito_TipoStock]
GO
ALTER TABLE [dbo].[SucursalUsuario]  WITH CHECK ADD  CONSTRAINT [FK_SucursalUsuario_Sucursal] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[SucursalUsuario] CHECK CONSTRAINT [FK_SucursalUsuario_Sucursal]
GO
ALTER TABLE [dbo].[SucursalUsuario]  WITH CHECK ADD  CONSTRAINT [FK_SucursalUsuario_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[SucursalUsuario] CHECK CONSTRAINT [FK_SucursalUsuario_UsuarioReferencia]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Cliente]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Venta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Arqueo] FOREIGN KEY([ArqueoId])
REFERENCES [dbo].[Arqueo] ([ArqueoId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Arqueo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Estado] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Estado]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Sucursal] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Sucursal]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_TipoCobro] FOREIGN KEY([TipoCobroId])
REFERENCES [dbo].[TipoCobro] ([TipoCobroId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_TipoCobro]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_TipoVenta] FOREIGN KEY([TipoVentaId])
REFERENCES [dbo].[TipoVenta] ([TipoVentaId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_TipoVenta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_UsuarioReferencia] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_UsuarioReferencia]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_UsuarioReferencia1] FOREIGN KEY([PreventistaId])
REFERENCES [dbo].[UsuarioReferencia] ([UsuarioRefId])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_UsuarioReferencia1]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Combo] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Combo]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Lista] FOREIGN KEY([ListaId])
REFERENCES [dbo].[Lista] ([ListaId])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Lista]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Moneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[Moneda] ([MonedaId])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Moneda]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([ProductoId])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Producto]
GO
ALTER TABLE [dbo].[VentaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_VentaDetalle_Venta] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Venta] ([VentaId])
GO
ALTER TABLE [dbo].[VentaDetalle] CHECK CONSTRAINT [FK_VentaDetalle_Venta]
GO
/****** Object:  StoredProcedure [dbo].[LimpiarTodasTablas]    Script Date: 31/01/2023 16:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LimpiarTodasTablas]
as
begin
delete VentaDetalle
DBCC CHECKIDENT ('VentaDetalle', RESEED, 0); 
delete ArqueoVenta
DBCC CHECKIDENT ('ArqueoVenta', RESEED, 0); 
delete Factura
DBCC CHECKIDENT ('Factura', RESEED, 0); 
delete NotaCreditoDetalle
DBCC CHECKIDENT ('NotaCreditoDetalle', RESEED, 0); 
delete NotaCredito
DBCC CHECKIDENT ('NotaCredito', RESEED, 0); 
delete Remito
DBCC CHECKIDENT ('Remito', RESEED, 0); 
delete Venta
DBCC CHECKIDENT ('Venta', RESEED, 0); 
delete Cliente
DBCC CHECKIDENT ('Cliente', RESEED, 0); 

delete Arqueo
DBCC CHECKIDENT ('Arqueo', RESEED, 0); 

delete ComboProducto
DBCC CHECKIDENT ('ComboProducto', RESEED, 0); 
delete PrecioLista
DBCC CHECKIDENT ('PrecioLista', RESEED, 0); 
delete StockDeposito
DBCC CHECKIDENT ('StockDeposito', RESEED, 0); 
delete Combo
DBCC CHECKIDENT ('Combo', RESEED, 0); 

delete Producto
DBCC CHECKIDENT ('Producto', RESEED, 0); 
delete Marca
DBCC CHECKIDENT ('Marca', RESEED, 0); 
delete Proveedor
DBCC CHECKIDENT ('Proveedor', RESEED, 0); 
delete TipoProducto
DBCC CHECKIDENT ('TipoProducto', RESEED, 0); 

delete Transportista
DBCC CHECKIDENT ('Transportista', RESEED, 0); 

delete Dolar
DBCC CHECKIDENT ('Dolar', RESEED, 0); 

--delete Lista
--DBCC CHECKIDENT ('Lista', RESEED, 0); 

end
GO
USE [master]
GO
ALTER DATABASE [DistribuidoraDB] SET  READ_WRITE 
GO
