package org.sid.test1.web;

import java.util.List;

import org.sid.dao.ImageHotelRepository;
import org.sid.entities.ImageHotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
public class ImageHotelRestService {
	@Autowired
	private ImageHotelRepository imageHotelRepository;
	
	@RequestMapping(value = "/imagesHotels",method = RequestMethod.GET)
	private List<ImageHotel> getImagesHotels(){
		return imageHotelRepository.findAll();
	}
	
	@RequestMapping(value = "/hotel/{id}",method = RequestMethod.GET)
	private ImageHotel getImageHotel(@PathVariable Long id){
		return imageHotelRepository.findOne(id);
	}
	
	@RequestMapping(value = "/hotels",method = RequestMethod.POST)
	private ImageHotel saveImageHotel(@RequestBody ImageHotel imageHotel){
		return imageHotelRepository.save(imageHotel);
	}
	
	@RequestMapping(value = "/imagesHotels/{id}",method = RequestMethod.PUT)
	private ImageHotel updateImageHotel(@PathVariable Long id, @RequestBody ImageHotel imageHotel){
		imageHotel.setId(id);
		return imageHotelRepository.save(imageHotel);
	}
	
	@RequestMapping(value = "/imagesHotels/{id}",method = RequestMethod.DELETE)
	private boolean supprimerImageHotel(@PathVariable Long id){
		imageHotelRepository.delete(id);
		return true;
	}

}
