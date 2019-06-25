package pe.edu.unsch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/proveedores")
public class VistaController {

    @GetMapping("/lista-proveedores")
    public String lista() {
        return "vista";
    }
}
