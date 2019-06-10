package org.sid.test1.web;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.sid.dao.PersonneRepository;
import org.sid.entities.Personne;
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

import java.io.IOException;


@RestController
@CrossOrigin("*")
public class PersonneRestService {
	ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired
	private PersonneRepository personneRestService;
	
	@RequestMapping(value = "/personnes",method = RequestMethod.GET)
	private List<Personne> getPersonnes(){
		return personneRestService.findAll();
	}
	
	@RequestMapping(value = "/admins/personnes",method = RequestMethod.GET)
	private List<Personne> getPersonnesAdmin(){
		return personneRestService.admins();
	}
	
	@RequestMapping(value = "/personnes/{id}",method = RequestMethod.GET)
	private Personne getPersonnes(@PathVariable Long id){
		return personneRestService.findOne(id);
	}
	
	@RequestMapping(value = "/personnes",method = RequestMethod.POST)
	private Personne save(@RequestBody Personne personne){
		System.out.println("nom : "+personne.getNom());
		return personneRestService.save(personne);
	}
	@RequestMapping(value = "/personnes",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> saveWithImage(@RequestParam(required=true, value="filename") MultipartFile file, @RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
		Personne personne = objectMapper.readValue(jsondata, Personne.class);
		personne.setImage("imagesClients/"+personne.getNom()+personne.getPrenom()+".jpeg");
		File convertFile = new File("src/main/resources/static/"+personne.getImage());
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);
		fout.write(file.getBytes());
		fout.close();
		
		
		System.out.println(personne.getNom());
		System.out.println(personne.getPrenom());
		System.out.println("nom : "+personne.getNom());
		personneRestService.save(personne);
		return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
	}
	
	@RequestMapping(value = "/mpersonnes",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> msaveWithImage(HttpServletRequest request,@RequestParam(required=true, value="filename") MultipartFile file, @RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
		Personne personne = objectMapper.readValue(jsondata, Personne.class);
		if(file.getSize()>0) {
		File convertFile = new File("src/main/resources/static/"+personne.getImage());
		convertFile.createNewFile();
		FileOutputStream fout = new FileOutputStream(convertFile);
		System.out.println("la taille est : "+file.getSize());
		fout.write(file.getBytes());
		fout.close();
		}
		
		System.out.println(personne.getNom());
		System.out.println(personne.getPrenom());
		System.out.println("nom : "+personne.getNom());
		personneRestService.save(personne);
		request.getSession().setAttribute("objetConnecter", personne);
		return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
	}
	
	@RequestMapping(value = "/personnes/{id}",method = RequestMethod.PUT)
	private Personne update(@PathVariable Long id, @RequestBody Personne personne){
		personne.setId_personne(id);
		return personneRestService.save(personne);
	}
	
	@RequestMapping(value = "/personnes/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		personneRestService.delete(id);
		return true;
	}
	

}
