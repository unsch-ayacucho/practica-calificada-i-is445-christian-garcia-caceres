package pe.edu.unsch.dao;

import java.util.List;

import pe.edu.unsch.entities.Producto;

@FunctionalInterface
public interface ProductoDAO {
	
	List<Producto> listarProductos();
}
