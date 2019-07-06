package pe.edu.unsch.service;

import java.util.List;

import pe.edu.unsch.entities.Producto;

@FunctionalInterface
public interface ProductoServicio {

	List<Producto> listarPorProducto();
}
