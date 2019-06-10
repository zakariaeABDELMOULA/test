package org.sid.test1.web;
import java.util.List;

import org.sid.dao.ReservationRepository;
import org.sid.entities.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin("*")
public class ReservationRestService {
	@Autowired
	private ReservationRepository reservationRestService;
	
	@RequestMapping(value = "/reservations",method = RequestMethod.GET)
	private List<Reservation> getReservations(){
		return reservationRestService.findAll();
	}
	@RequestMapping(value = "/reservations/angular",method = RequestMethod.GET)
	private List<Object> getReservationsAngular(){
		return reservationRestService.tous();
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.GET)
	private Reservation getReservations(@PathVariable Long id){
		return reservationRestService.findOne(id);
	}
	
	@RequestMapping(value = "/reservations",method = RequestMethod.POST)
	private Reservation save(@RequestBody Reservation reservation){
		return reservationRestService.save(reservation);
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.PUT)
	private Reservation update(@PathVariable Long id, @RequestBody Reservation reservation){
		reservation.setId_reservation(id);
		return reservationRestService.save(reservation);
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		reservationRestService.delete(id);
		return true;
	}
	@RequestMapping(value = "/reservations/angulare/{id}",method = RequestMethod.DELETE)
	private  ResponseEntity<Object>  supprimerReservationAngulare(@PathVariable Long id){
		reservationRestService.delete(id);
		return new ResponseEntity<>("\"success"+id+"\"", HttpStatus.OK);
	}
	

}
