namespace distrbuidoraAPI.Models;

public class ProductoModel {
    public int ProductoId { get; set; }
    public string Nombre { get; set; }
    public int TipoProductoId { get; set; }
    public int TipoDuracionId { get; set; }
    public int ProveedorId { get; set; }
    public int MarcaId { get; set; }
    public decimal PrecioCosto { get; set; }
    public int Minimo { get; set; }
    public string Codigo {get; set;}
    public int[] DepositosList { get; set; }
}