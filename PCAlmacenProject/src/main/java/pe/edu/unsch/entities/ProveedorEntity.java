package pe.edu.unsch.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "proveedor", schema = "almacenbd", catalog = "")
public class ProveedorEntity {
    private int idProveedor;
    private String nombreProveedor;
    private String ciudad;
    private String pais;

    @Id
    @Column(name = "id_proveedor")
    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    @Basic
    @Column(name = "nombre_proveedor")
    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    @Basic
    @Column(name = "ciudad")
    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    @Basic
    @Column(name = "pais")
    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProveedorEntity that = (ProveedorEntity) o;
        return idProveedor == that.idProveedor &&
                Objects.equals(nombreProveedor, that.nombreProveedor) &&
                Objects.equals(ciudad, that.ciudad) &&
                Objects.equals(pais, that.pais);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idProveedor, nombreProveedor, ciudad, pais);
    }
}
