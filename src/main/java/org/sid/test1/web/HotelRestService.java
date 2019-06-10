package org.sid.test1.web;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.sid.dao.HotelRepository;
import org.sid.dao.ImageHotelRepository;
import org.sid.entities.Hotel;
import org.sid.entities.ImageHotel;
import org.sid.entities.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@CrossOrigin("*")
public class HotelRestService {
	
	ObjectMapper objectMapper = new ObjectMapper();

	@Autowired
	private HotelRepository hotelRepository;
	@Autowired
	private ImageHotelRepository imageHotelRepository;
	
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
	

	@RequestMapping(value = "/hoteles",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> saveWithImage(@RequestParam(required=true, value="filename") MultipartFile file, @RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
			
		Hotel hotel = objectMapper.readValue(jsondata, Hotel.class);
		hotel.setImage("imagesHoteles/"+hotel.getRaison_social()+hotel.getEmail()+".jpeg");

		File convertFile = new File("src/main/resources/static/"+hotel.getImage());
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);
		fout.write(file.getBytes());
		fout.close();
		
		System.out.println(hotel.getAdresse());
		hotelRepository.save(hotel);
		return new ResponseEntity<>("Vôtre compte est crée avec succées.", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
	}

	
	@RequestMapping(value = "/mhoteles",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> msaveWithImage(HttpServletRequest request,@RequestParam(required=true, value="filename") MultipartFile file, @RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
			
		Hotel hotel = objectMapper.readValue(jsondata, Hotel.class);
		if(file.getSize()>0) {
		File convertFile = new File("src/main/resources/static/"+hotel.getImage());
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);
		fout.write(file.getBytes());
		fout.close();
		}
		System.out.println(hotel.getRaison_social());
		hotelRepository.save(hotel);
		request.getSession().setAttribute("hotel", hotel);
		return new ResponseEntity<>("Vôtre compte est crée avec succées.", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
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
	
	@RequestMapping(value = "/hotels/angulare/{id}",method = RequestMethod.DELETE)
	private  ResponseEntity<Object> supprimerHotelAngulare(@PathVariable Long id){
		hotelRepository.delete(id);
		return new ResponseEntity<>("\"success"+id+"\"", HttpStatus.OK);	
	}
	
	


}
