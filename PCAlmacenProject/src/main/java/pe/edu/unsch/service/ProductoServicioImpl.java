package pe.edu.unsch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.dao.ProductoDAO;
import pe.edu.unsch.entities.Producto;

@Service
@Transactional
public class ProductoServicioImpl implements ProductoServicio {

	@Autowired
	private ProductoDAO productoDAO;
	
	@Override
	public List<Producto> listarPorProducto() {
		
		return productoDAO.listarProductos();
	}

}
