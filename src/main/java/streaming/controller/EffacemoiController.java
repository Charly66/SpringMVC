/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import streaming.entity.Effacemoi;
import streaming.service.EffacemoiCrudService;

/**
 *
 * @author tom
 */
@Controller
@RequestMapping(value = "/effacemoi")
public class EffacemoiController {
    
    @Autowired
    private EffacemoiCrudService effacemoiService;
    
    @RequestMapping(value = "yo", method = RequestMethod.GET)
    public String effaceMoi(){
        
        System.out.println("Passe par ici");
        
        return "forward:home";
    }
    
    @RequestMapping(value = "detail/{effacemoiId}", method = RequestMethod.GET)
    public String detail(Model model, @PathVariable(value = "effacemoiId") long id){
        
        model.addAttribute("effacemoi", effacemoiService.findOne(id));
        
        return "detail";
    }
    
    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model){
        
        model.addAttribute("liste",effacemoiService.findAll());
        return "liste";
    }
    
    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String lienAjouter(Model model){
        
        model.addAttribute("effacemoi",new Effacemoi());
        return "ajouter";
    }
    
    @RequestMapping(value = "ajouter", method = RequestMethod.POST)
    public String ajouter(@ModelAttribute(value = "effacemoi") Effacemoi em){

        effacemoiService.save(new Effacemoi(em.getNom(), em.getPrenom()));
        return "redirect:lister" ;
    }
    
    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String home(){
        
        System.out.println("Passe par ici");
        
        return "homepage";
    }
}
