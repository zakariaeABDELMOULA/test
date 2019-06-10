package org.sid.contollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SiteController {

	 	@GetMapping({"/", "/hello"})
	    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "hello";
	    }
	 	@GetMapping({"/", "/index"})
	    public String index(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "site/index";
	    }
	 	 
	 	@GetMapping({"/", "/tousleschambres"})
	    public String tousleschambres(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "site/rooms1";
	    }
	 	@GetMapping({"/", "/hotel_chambres"})
	    public String hotel_chambres(Model model, @RequestParam(value="id_hotel", required=false, defaultValue="1") String id_hotel) {
	        model.addAttribute("id_hotel", id_hotel);
	        return "site/Hotel_chambres";
	    }
	 	
	 	@GetMapping({"/", "/tousleshotels"})
	    public String tousleshotels(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "site/hotel1";
	    }
	 	@GetMapping({"/", "/room-detail"})
	    public String roomDetail(Model model, @RequestParam(value="id_chambre", required=false, defaultValue="1") String id_chambre) {
	        model.addAttribute("id_chambre", id_chambre);
	        return "site/room-detail";
	    }
	 	@GetMapping({"/", "/chercher"})
	    public String chercher(Model model, @RequestParam(
	    		value="id_chambre", required=false, defaultValue="1"
	    		) String id_chambre, 
	    		@RequestParam(value="raison_social", required=false, defaultValue="1"
	    	    ) String raison_social,
	    		@RequestParam(value="pays", required=false, defaultValue="1"
	    	    	    ) String pays,
	    		@RequestParam(value="ville", required=false, defaultValue="1"
	    	    	    ) String ville,
	    		@RequestParam(value="date_debut", required=false, defaultValue="2019/06/06"
	    	    	    ) String date_debut,
	    		@RequestParam(value="date_fin", required=false, defaultValue="2020/06/06"
	    	    	    ) String date_fin,
	    		@RequestParam(value="nombre_etoile", required=false, defaultValue="1"
	    	    	    ) String nombre_etoile
	    		) {
	        model.addAttribute("raison_social", raison_social);
	        model.addAttribute("pays", pays);
	        model.addAttribute("ville", ville);
	        model.addAttribute("date_debut", date_debut);
	        model.addAttribute("date_fin", date_fin);
	        return "site/chercher";
	    }
}