package pe.edu.unsch.entities;
// Generated 04-jul-2019 15:53:27 by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Proveedor generated by hbm2java
 */
@Entity
@Table(name = "proveedor", catalog = "almacenbd")
public class Proveedor implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idProveedor;
	private String nombreProveedor;
	private String ciudad;
	private String pais;
	private Set<Producto> productos = new HashSet<Producto>(0);

	public Proveedor() {
	}

	public Proveedor(int idProveedor, String nombreProveedor, String ciudad, String pais) {
		this.idProveedor = idProveedor;
		this.nombreProveedor = nombreProveedor;
		this.ciudad = ciudad;
		this.pais = pais;
	}

	public Proveedor(int idProveedor, String nombreProveedor, String ciudad, String pais, Set<Producto> productos) {
		this.idProveedor = idProveedor;
		this.nombreProveedor = nombreProveedor;
		this.ciudad = ciudad;
		this.pais = pais;
		this.productos = productos;
	}

	@Id

	@Column(name = "id_proveedor", unique = true, nullable = false)
	public int getIdProveedor() {
		return this.idProveedor;
	}

	public void setIdProveedor(int idProveedor) {
		this.idProveedor = idProveedor;
	}

	@Column(name = "nombre_proveedor", nullable = false, length = 30)
	public String getNombreProveedor() {
		return this.nombreProveedor;
	}

	public void setNombreProveedor(String nombreProveedor) {
		this.nombreProveedor = nombreProveedor;
	}

	@Column(name = "ciudad", nullable = false, length = 20)
	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	@Column(name = "pais", nullable = false, length = 20)
	public String getPais() {
		return this.pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "proveedor")
	public Set<Producto> getProductos() {
		return this.productos;
	}

	public void setProductos(Set<Producto> productos) {
		this.productos = productos;
	}

}