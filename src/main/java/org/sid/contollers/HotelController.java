package org.sid.contollers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sid.dao.ChambreRepository;
import org.sid.dao.HotelRepository;
import org.sid.dao.ImageChambreRepository;
import org.sid.dao.ReservationRepository;
import org.sid.entities.Hotel;
import org.sid.entities.ImageChambre;
import org.sid.entities.Personne;
import org.sid.entities.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {
	@Autowired
	private ReservationRepository reservationRestService;
	
	@Autowired
	private	HotelRepository hotelRepository;
	
	@Autowired
	private	ChambreRepository chambreRepository;
	
	@Autowired
	private	ImageChambreRepository imageChambreRepository;
	
	 	@GetMapping({"/", "/loginHotel"})
	    public String login(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/login";
	    }
	 	
	 	@PostMapping({"/", "/authentificationHotel"})
	    public String authentification(HttpServletRequest request,Model model, @RequestParam(value="email") String email,@RequestParam(value="password") String mdp) {
	 		Hotel hotel ;
	        System.out.println(email+" "+mdp);
	        hotel = hotelRepository.authentification(email, mdp);
	        if(hotel != null) {
	        	HttpSession session = request.getSession();
	        	session.setAttribute("hotel", hotel);
	        	System.out.println(((Hotel) request.getSession().getAttribute("hotel")).getEmail());
	        	return "site/index";
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
	 	
	 	@GetMapping({"/", "/logOutHotel"})
	    public String login(HttpServletRequest request) {
	 		HttpSession session = request.getSession();
	 		session.invalidate();
	        return "site/index";
	    }
	 	@GetMapping({"/", "/modifierHotel"})
	    public String modifierProfile(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/modifierProfile";
	    }
	 	@GetMapping({"/", "/meschambres"})
	    public String meschambres(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/meschambres";
	    }
	 	@GetMapping({"/", "/mescommandes"})
	    public String mescommandes(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/mescommandes";
	    }
	 	@GetMapping({"/", "/AjouterChambre"})
	    public String AjouterChambre(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/AjouterChambre";
	    }
	 	@GetMapping({"/", "/ModifierChambre"})
	    public String ModifierChambre(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceHotel/ModifierChambre";
	    }
	 	@GetMapping({"/", "/supprimerChambre"})
	    public String supprimerReservation(HttpServletRequest request,Model model, 
	    		@RequestParam(value="id_chambre", required=true
	    	    	    ) String id_chambre) throws ParseException {
	        HttpSession session = request.getSession();
	        Hotel hotel ;
        	hotel = (Hotel)session.getAttribute("hotel");
        	if(hotel != null) {
        		chambreRepository.delete(Long.parseLong(id_chambre));
        		imageChambreRepository.supprimerEnfant(Long.parseLong(id_chambre));
        		 return "espaceHotel/meschambres";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceHotel/login";
	        }
	    }
	 	@GetMapping({"/", "/validerReservation"})
	    public String validerReservation(HttpServletRequest request,Model model, 
	    		@RequestParam(value="id_reservation", required=true
	    	    	    ) Long id_reservation
	    		) throws ParseException {
	    	model.addAttribute("id_reservation", id_reservation);
	        HttpSession session = request.getSession();
	        Hotel hotel ;
        	hotel = (Hotel)session.getAttribute("hotel");
        	if(hotel != null) {
	        	
	        	Reservation reservation = reservationRestService.findOne(id_reservation);
	        	reservation.setEtat("accepter");
	        	reservationRestService.save(reservation);
	        	return "espaceHotel/mescommandes";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceHotel/login";
	        }
	    }
}