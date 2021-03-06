package org.sid.test1.web;//test
import java.util.List;

import org.sid.dao.ImageHotelRepository;
import org.sid.entities.ImageHotel;
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
public class ImageHotelRestService {
	@Autowired
	private ImageHotelRepository imageHotelRepository;
	
	@RequestMapping(value = "/imageHotels",method = RequestMethod.GET)
	private List<ImageHotel> getImageHotels(){
		return imageHotelRepository.findAll();
	}
	
	@RequestMapping(value = "/imageHotels/{id}",method = RequestMethod.GET)
	private ImageHotel getImageHotels(@PathVariable Long id){
		return imageHotelRepository.findOne(id);
	}
	
	@RequestMapping(value = "/imageHotels",method = RequestMethod.POST)
	private ImageHotel save(@RequestBody ImageHotel imageHotel){
		return imageHotelRepository.save(imageHotel);
	}
	
	@RequestMapping(value = "/imageHotels/{id}",method = RequestMethod.PUT)
	private ImageHotel update(@PathVariable Long id, @RequestBody ImageHotel imageHotel){
		imageHotel.setId_imageHotel(id);
		return imageHotelRepository.save(imageHotel);
	}
	
	@RequestMapping(value = "/imageHotels/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		imageHotelRepository.delete(id);
		return true;
	}
	


}
