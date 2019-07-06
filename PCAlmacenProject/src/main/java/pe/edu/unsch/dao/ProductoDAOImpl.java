package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.entities.Producto;

@Repository
@Transactional
public class ProductoDAOImpl implements ProductoDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<Producto> listarProductos() {
		
		return (List<Producto>) entityManager
					.createQuery("from Producto", Producto.class)
					.getResultList();
	}

}
