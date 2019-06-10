package org.sid.contollers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.sid.dao.ChambreRepository;
import org.sid.dao.PersonneRepository;
import org.sid.dao.ReservationRepository;
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
public class ClientController {
		
	@Autowired
	private	PersonneRepository personneRepository;
	@Autowired
	private ReservationRepository reservationRestService;

	 	@GetMapping({"/", "/loginClient"})
	    public String login(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/login";
	    }
	 	
	 	@PostMapping({"/", "/authentificationClient"})
	    public String authentification(HttpServletRequest request,Model model, @RequestParam(value="email") String email,@RequestParam(value="mdp") String mdp) {
	 		Personne personne ;
	        System.out.println(email+" "+mdp);
	        personne = personneRepository.authentification(email, mdp);
	        if(personne != null) {
	        	System.out.println("id : "+personne.getId_personne());
	        	HttpSession session = request.getSession();
	        	session.setAttribute("objetConnecter", personne);
	        	System.out.println(((Personne) request.getSession().getAttribute("objetConnecter")).getEmail());
	        	return "site/index";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
	 	@GetMapping({"/", "/logOutClient"})
	    public String login(HttpServletRequest request) {
	 		HttpSession session = request.getSession();
	 		session.invalidate();
	        return "site/index";
	    }
	 	@GetMapping({"/", "/modifierProfile"})
	    public String modifierProfile(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/modifierProfile";
	    }
	 	@GetMapping({"/", "/inscriptionClient"})
	    public String inscription(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/inscription";
	    }
	 	@GetMapping({"/", "/mesreservations"})
	    public String mesreservations(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
	        model.addAttribute("name", name);
	        return "espaceClient/mesreservation";
	    }
	 	@GetMapping({"/", "/reserver"})
	    public String reserver(HttpServletRequest request,Model model, 
	    		@RequestParam(value="date_debut", required=true
	    	    	    ) String date_debut,
	    		@RequestParam(value="date_fin", required=true
	    	    	    ) String date_fin,
	    		@RequestParam(value="id_chambre", required=true) String id_chambre) throws ParseException {
	        model.addAttribute("id_chambre", id_chambre);
	        HttpSession session = request.getSession();
	        Personne personne ;
        	personne = (Personne)session.getAttribute("objetConnecter");
        	if(personne != null) {
	        	System.out.println("Reservation de : "+personne.getId_personne()+" de chambre : "+id_chambre);
	        	Date date_d=new SimpleDateFormat("dd/MM/yyyy").parse(date_debut);  
	        	Date date_f=new SimpleDateFormat("dd/MM/yyyy").parse(date_fin);  
	        	Long idclient = new Long(personne.getId_personne());
	        	Long idchambre = new Long(id_chambre);
	        	Reservation reservation = new Reservation(idclient,idchambre,date_d, date_f, 0.0, "en traitement");
	        	reservationRestService.save(reservation);
	        	return "espaceClient/mesreservation";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
	    @GetMapping({"/", "/supprimerReservation"})
	    public String supprimerReservation(HttpServletRequest request,Model model, 
	    		@RequestParam(value="id_reservation", required=true
	    	    	    ) String id_reservation) throws ParseException {
	        HttpSession session = request.getSession();
	        Personne personne ;
        	personne = (Personne)session.getAttribute("objetConnecter");
        	if(personne != null) {
	        	reservationRestService.delete(Long.parseLong(id_reservation));
	        	return "espaceClient/mesreservation";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
	    @GetMapping({"/", "/modifierReservation"})
	    public String modifierReservation(HttpServletRequest request,Model model, 
	    		@RequestParam(value="id_reservation", required=true
	    	    	    ) String id_reservation) throws ParseException {
	    	model.addAttribute("id_reservation", id_reservation);
	        HttpSession session = request.getSession();
	        Personne personne ;
        	personne = (Personne)session.getAttribute("objetConnecter");
        	if(personne != null) {
	        	return "espaceClient/room-detail";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
	    @PostMapping({"/", "/modifierReservations"})
	    public String modifierReservations(HttpServletRequest request,Model model, 
	    		@RequestParam(value="id_reservation", required=true
	    	    	    ) Long id_reservation,
	    		@RequestParam(value="date_debut", required=true
	    	    	    ) String date_debut,
	    		@RequestParam(value="date_fin", required=true
	    	    	    ) String date_fin
	    		) throws ParseException {
	    	model.addAttribute("id_reservation", id_reservation);
	        HttpSession session = request.getSession();
	        Personne personne ;
        	personne = (Personne)session.getAttribute("objetConnecter");
        	if(personne != null) {
	        	Date date_d=new SimpleDateFormat("MM/dd/yyyy").parse(date_debut);  
	        	Date date_f=new SimpleDateFormat("MM/dd/yyyy").parse(date_fin);  
	        	Long idclient = new Long(personne.getId_personne());
	        	Reservation reservation = reservationRestService.findOne(id_reservation);
	        	reservation.setDate_debut(date_d);
	        	reservation.setDate_fin(date_f);
	        	reservation.setId_reservation(id_reservation);
	        	reservationRestService.save(reservation);
	        	return "espaceClient/mesreservation";
	        }
	        else {
		        model.addAttribute("error", "error");
	        	return "espaceClient/login";
	        }
	    }
}