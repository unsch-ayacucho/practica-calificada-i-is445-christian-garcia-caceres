package pe.edu.unsch.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import pe.edu.unsch.entities.Producto;

public class RetrieveProducto {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Producto getProducto(int id) {
		
		return (Producto) entityManager.createQuery("from Producto").getSingleResult();
	}
}
