using distribuidoraAPI.Negocio.entidades;

namespace distribuidoraAPI.Negocio.gestores;

public class GestorProducto
{
    public static Producto Insertar(Producto oProducto)
    {
        oProducto.FechaAlta = DateTime.Now;
        oProducto.Activo = true;
        oProducto.FechaModificacion = DateTime.Now;
        using (var ctx = new DistribuidoraDBContext())
        {
            ctx.Producto.Add(oProducto);
            ctx.SaveChanges();
        }
        return oProducto;
    }
}