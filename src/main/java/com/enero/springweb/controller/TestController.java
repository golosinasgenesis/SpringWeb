package com.enero.springweb.controller;


import com.enero.springweb.model.Programa;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value={"/","pruebas", "test"})

public class TestController {
    
    @RequestMapping(method = RequestMethod.GET)
    /*
    public String index() {
        return "test/index";
    }*/
    
    
    public String index(Model model) {
        
        model.addAttribute("titulo", "Hola TECSUP");
        model.addAttribute("contenido","Bienvenidos al curso Spring Framework");
        
        Programa programa = new Programa();
        programa.setDescripcion("Programa de formación regular");
        model.addAttribute("programa", programa);
        
        return "test/index";
    }
    
    @ModelAttribute
    public void listado(Model model) {
        model.addAttribute("nombres", new String[]{"Williams", "Eduardo"});
    }
    
    
    @RequestMapping("parametros")
        public String parametros(@RequestParam(required = false) String nombre, @RequestParam(required = false) String apellido, Model model ){
    model.addAttribute("nombres", nombre + " "+ apellido);
    return "test/informacion";
    }
    
    @RequestMapping("binding")
    public String parametro(Programa programa, Model model ){
    model.addAttribute("programa", programa);
    return "test/binding";
    }
    
    @ResponseBody
    @RequestMapping("ajax")
    public String ajax(Programa programa){
    return programa.getNombre();
    }
    
    /*
    public ModelAndView index() {
    Map<String, Object> retorno = new HashMap<String, Object>();
    retorno.put("titulo", "Hola TECSUP");
    retorno.put("contenido","Bienvenidos al curso Spring Framework");
    return new ModelAndView("test/index", retorno);
    }
    */
    
    @RequestMapping("informacion")
    public String alternativo() {
        return "test/informacion";
    }
    
    @RequestMapping(value = {"info", "prueba"})
    public String pruebas() {
            return "test/pruebas";
    }
    
}