package pe.edu.unsch.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "producto", schema = "almacenbd", catalog = "")
public class ProductoEntity {
    private int idProducto;
    private String nombre;
    private double precio;
    private int cantidad;
    private int idProveedor;

    @Id
    @Column(name = "id_producto")
    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    @Basic
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Basic
    @Column(name = "precio")
    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Basic
    @Column(name = "cantidad")
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Basic
    @Column(name = "id_proveedor")
    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductoEntity that = (ProductoEntity) o;
        return idProducto == that.idProducto &&
                Double.compare(that.precio, precio) == 0 &&
                cantidad == that.cantidad &&
                idProveedor == that.idProveedor &&
                Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idProducto, nombre, precio, cantidad, idProveedor);
    }
}
