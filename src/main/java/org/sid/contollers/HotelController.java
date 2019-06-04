package org.sid.contollers;

import javax.management.Query;

import org.sid.dao.HotelRepository;
import org.sid.entities.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {
	
	@Autowired
	private	HotelRepository hotelRepository;

	 	@GetMapping({"/", "/loginHotel"})
	    public String login(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/login";
	    }
	 	
	 	@GetMapping({"/", "/authentificationHotel"})
	    public String authentification(Model model, @RequestParam(value="email") String email,@RequestParam(value="password") String mdp) {
	 		Hotel hotel ;
	        System.out.println(email+" "+mdp);
	        hotel = hotelRepository.authentification(email, mdp);
	        if(hotel != null) {
	        	System.out.println("id : "+hotel.getId_hotel());
	        	return "/index";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceHotel/login";
	        }
	    }
	 	
	 	@GetMapping({"/", "/inscriptionHotel"})
	    public String inscription(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/inscription";
	    }
}