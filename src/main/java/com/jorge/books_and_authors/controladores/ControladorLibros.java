package com.jorge.books_and_authors.controladores;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;




@Controller
public class ControladorLibros {
    private static HashMap<String, String> listaLibros = new HashMap<>();

    public ControladorLibros(){
        listaLibros.put("Odisea", "Homero");	
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");		
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");	
        listaLibros.put("El alquimista", "Paulo Coelho");	
    }

    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model model) {
        model.addAttribute("libros", listaLibros.keySet());
        return "libros.jsp";
    }

    @GetMapping("/libros/{nombre}")
    public String obtenerInformacionDeLibro(@PathVariable("nombre")String libro, Model model) {
        model.addAttribute("libro", libro);
        model.addAttribute("autor", listaLibros.get(libro));
        return "detalleLibro.jsp";
    }

    @GetMapping("/libros/formulario")
    public String formularioLibro() {
        return "formularioLibros.jsp";
    }

    @PostMapping("/procesa/libro")
    public String procesaLibro(@RequestParam("nombreLibro") String libro, @RequestParam("nombreAutor") String autor) {
        listaLibros.put(libro, autor);
        return "redirect:/libros";
    }
    
}
