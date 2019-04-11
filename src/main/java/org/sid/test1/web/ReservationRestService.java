package org.sid.test1.web;
import java.util.List;

import org.sid.dao.ReservationRepository;
import org.sid.entities.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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
	private ReservationRepository ReservationRepository;
	
	@RequestMapping(value = "/reservations",method = RequestMethod.GET)
	private List<Reservation> getreservations(){
		return ReservationRepository.findAll();
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.GET)
	private Reservation getreservations(@PathVariable Long id){
		return ReservationRepository.findOne(id);
	}
	
	@RequestMapping(value = "/reservations",method = RequestMethod.POST)
	private Reservation save(@RequestBody Reservation reservation){
		return ReservationRepository.save(reservation);
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.PUT)
	private Reservation update(@PathVariable Long id, @RequestBody Reservation reservation){
		reservation.setId_reservation(id);
		return ReservationRepository.save(reservation);
	}
	
	@RequestMapping(value = "/reservations/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		ReservationRepository.delete(id);
		return true;
	}
	
	@RequestMapping(value = "/chercherreservations",method = RequestMethod.GET)
	private Page<Reservation> chercher(
			@RequestParam(name="mc",defaultValue="")String mc,
			@RequestParam(name="page",defaultValue="0")int  page,
			@RequestParam(name="size",defaultValue="5")int  size)
	{
		return ReservationRepository.chercher("%"+mc+"%",new PageRequest(page, size));
	}
}
