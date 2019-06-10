package org.sid.test1.web;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.sid.dao.ChambreRepository;
import org.sid.dao.ImageChambreRepository;
import org.sid.entities.Chambre;
import org.sid.entities.ImageChambre;
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


@RestController
@CrossOrigin("*")
public class ChambreRestService {
	ObjectMapper objectMapper = new ObjectMapper();
	@Autowired
	private ChambreRepository chambreRestService;
	
	@Autowired
	private ImageChambreRepository imagechambreRestService;
	
	@RequestMapping(value = "/chambres",method = RequestMethod.GET)
	private List<Chambre> getChambres(){
		return chambreRestService.findAll();
	}
	
	@RequestMapping(value = "/chambres/{id}",method = RequestMethod.GET)
	private Chambre getChambres(@PathVariable Long id){
		return chambreRestService.findOne(id);
	}
	
	@RequestMapping(value = "/chambres",method = RequestMethod.POST)
	private Chambre save(@RequestBody Chambre chambre){
		return chambreRestService.save(chambre);
	}
	
	@RequestMapping(value = "/chambres/{id}",method = RequestMethod.PUT)
	private Chambre update(@PathVariable Long id, @RequestBody Chambre chambre){
		chambre.setId_chambre(id);
		return chambreRestService.save(chambre);
	}
	
	@RequestMapping(value = "/chambres/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		chambreRestService.delete(id);
		return true;
	}
	
	@RequestMapping(value = "/chambress",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> saveWithImage(
			@RequestParam(required=true, value="filename1") MultipartFile file1,
			@RequestParam(required=false, value="filename2") MultipartFile file2,
			@RequestParam(required=false, value="filename3") MultipartFile file3, 
			@RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
			Chambre chambre = objectMapper.readValue(jsondata, Chambre.class);
			chambreRestService.save(chambre);
			chambre= chambreRestService.getLastChambreAdded();
		if(file1.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/1_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file1.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}
		if(file2.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/2_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file2.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}
		if(file3.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/3_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file3.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}
		return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
	}
	
	
	@RequestMapping(value = "/mchambress",method = RequestMethod.POST,consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	private ResponseEntity<Object> msaveWithImage(
			@RequestParam(required=true, value="filename1") MultipartFile file1,
			@RequestParam(required=false, value="filename2") MultipartFile file2,
			@RequestParam(required=false, value="filename3") MultipartFile file3, 
			@RequestParam(required=true, value="jsondata")String jsondata) throws IOException{
		try {
			Chambre chambre = objectMapper.readValue(jsondata, Chambre.class);
			chambreRestService.save(chambre);
			chambre= chambreRestService.getLastChambreAdded();
		/*if(file1.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/1_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file1.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}
		if(file2.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/2_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file2.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}
		if(file3.getSize()>0) {
			ImageChambre imageChambre =  new ImageChambre();
			imageChambre.setId_chambre(chambre.getId_chambre());
			imageChambre.setImage("imagesChambres/3_"+chambre.getId_chambre()+".jpeg");
			File convertFile = new File("src/main/resources/static/"+imageChambre.getImage());
			convertFile.createNewFile();
			FileOutputStream fout = new FileOutputStream(convertFile);
			fout.write(file3.getBytes());
			fout.close();
			imagechambreRestService.save(imageChambre);
			System.out.println(chambre.getDescription());
		}*/
		return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}catch(Exception ex) {
			return new ResponseEntity<>(ex.getMessage().toString()+".", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		finally {
			//return new ResponseEntity<>("File is uploaded successfully", HttpStatus.OK);	
		}
	}
	

}
