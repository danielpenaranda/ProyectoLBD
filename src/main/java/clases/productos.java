package clases;

/**
 *
 * @author HUAWEI PC
 */
public class productos {
    int IdProducto;
    String nombreProducto;
    String categoriaProducto;
    String descripcionProducto;
    String precioUnidad;
    String fechaVencimiento;
    String nivelInventario;
    boolean existencias;

    public productos() {
    }

    public productos(int IdProducto, String nombreProducto, String categoriaProducto, String descripcionProducto, String precioUnidad, String fechaVencimiento, String nivelInventario, boolean existencias) {
        this.IdProducto = IdProducto;
        this.nombreProducto = nombreProducto;
        this.categoriaProducto = categoriaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precioUnidad = precioUnidad;
        this.fechaVencimiento = fechaVencimiento;
        this.nivelInventario = nivelInventario;
        this.existencias = existencias;
    }

    public int getIdProducto() {
        return IdProducto;
    }

    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getCategoriaProducto() {
        return categoriaProducto;
    }

    public void setCategoriaProducto(String categoriaProducto) {
        this.categoriaProducto = categoriaProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public String getPrecioUnidad() {
        return precioUnidad;
    }

    public void setPrecioUnidad(String precioUnidad) {
        this.precioUnidad = precioUnidad;
    }

    public String getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(String fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public String getNivelInventario() {
        return nivelInventario;
    }

    public void setNivelInventario(String nivelInventario) {
        this.nivelInventario = nivelInventario;
    }

    public boolean isExistencias() {
        return existencias;
    }

    public void setExistencias(boolean existencias) {
        this.existencias = existencias;
    }
    
    
    
    
    
}
