package org.sid.contollers;

import javax.management.Query;

import org.sid.dao.PersonneRepository;
import org.sid.entities.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClientController {
		
	@Autowired
	private	PersonneRepository personneRepository;

	 	@GetMapping({"/", "/loginClient"})
	    public String login(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/login";
	    }
	 	
	 	@GetMapping({"/", "/authentificationClient"})
	    public String authentification(Model model, @RequestParam(value="email") String email,@RequestParam(value="mdp") String mdp) {
	 		Personne personne ;
	        System.out.println(email+" "+mdp);
	        personne = personneRepository.authentification(email, mdp);
	        if(personne != null) {
	        	System.out.println("id : "+personne.getId_personne());
	        	return "/index";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
	 	
	 	@GetMapping({"/", "/inscriptionClient"})
	    public String inscription(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/inscription";
	    }
}