package pe.edu.unsch.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.unsch.dao.RetrieveProducto;
import pe.edu.unsch.entities.Producto;
import pe.edu.unsch.entities.Proveedor;
import pe.edu.unsch.service.ProductoServicioImpl;

@Controller
@RequestMapping("/productos")
public class VistaController {

	@Autowired
	private ProductoServicioImpl service;
	
    @GetMapping("/lista-productos")
    public String lista(Model model) {
    	
    	List<Producto> productos = service.listarPorProducto();
    	
    	/*Proveedor chinaPro = new Proveedor(1, "ChinChing Co.", "Beijing", "China");
    	Proveedor peruPro = new Proveedor(1, "El Chinito del Tractor S.R.L.", "Lima", "Perú");
    	
    	productos.add(new Producto(1, chinaPro, "Memoría RAM 8GB", 505.5f, 20));
    	productos.add(new Producto(2, peruPro, "Procesador AMD A4", 420.3f, 5));*/
    	
        model.addAttribute("productos", productos);
    	
    	return "/index";
    }
}
