package clases;

/**
 *
 * @author HUAWEI PC
 */
public class productos {
    int id;
    String producto;
    String descripción;
    String etiqueta;
    double precio;
    boolean existencia;

    public productos() {
    }

    public productos(int id, String producto, String descripción, String etiqueta, double precio, boolean existencia) {
        this.id = id;
        this.producto = producto;
        this.descripción = descripción;
        this.etiqueta = etiqueta;
        this.precio = precio;
        this.existencia = existencia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getDescripción() {
        return descripción;
    }

    public void setDescripción(String descripción) {
        this.descripción = descripción;
    }

    public String getEtiqueta() {
        return etiqueta;
    }

    public void setEtiqueta(String etiqueta) {
        this.etiqueta = etiqueta;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public boolean isExistencia() {
        return existencia;
    }

    public void setExistencia(boolean existencia) {
        this.existencia = existencia;
    }
    
    
    
}
