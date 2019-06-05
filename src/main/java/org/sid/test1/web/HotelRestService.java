package org.sid.test1.web;

import java.util.List;

import org.sid.dao.HotelRepository;
import org.sid.entities.Hotel;
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
public class HotelRestService {

	@Autowired
	private HotelRepository hotelRepository;
	@RequestMapping(value = "/hotels",method = RequestMethod.GET)
	private List<Hotel> getHotels(){
		return hotelRepository.findAll();
	}
	
	@RequestMapping(value = "/hotel/{id}",method = RequestMethod.GET)
	private Hotel getHotel(@PathVariable Long id){
		return hotelRepository.findOne(id);
	}
	
	@RequestMapping(value = "/hotels",method = RequestMethod.POST)
	private Hotel saveHotel(@RequestBody Hotel hotel){
		return hotelRepository.save(hotel);
	}
	
	@RequestMapping(value = "/hotels/{id}",method = RequestMethod.PUT)
	private Hotel updateHotel(@PathVariable Long id, @RequestBody Hotel hotel){
		hotel.setId_hotel(id);
		return hotelRepository.save(hotel);
	}
	
	@RequestMapping(value = "/hotels/{id}",method = RequestMethod.DELETE)
	private boolean supprimerHotel(@PathVariable Long id){
		hotelRepository.delete(id);
		return true;
	}
	


}
