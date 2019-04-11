package org.sid.test1.web;
import java.util.List;

import org.sid.dao.ImageChambreRepository;
import org.sid.entities.ImageChambre;
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
public class ImageChambreRestService {
	@Autowired
	private ImageChambreRepository imageChambreRestService;
	
	@RequestMapping(value = "/imageChambres",method = RequestMethod.GET)
	private List<ImageChambre> getImageChambres(){
		return imageChambreRestService.findAll();
	}
	
	@RequestMapping(value = "/imageChambres/{id}",method = RequestMethod.GET)
	private ImageChambre getImageChambres(@PathVariable Long id){
		return imageChambreRestService.findOne(id);
	}
	
	@RequestMapping(value = "/imageChambres",method = RequestMethod.POST)
	private ImageChambre save(@RequestBody ImageChambre imageChambre){
		return imageChambreRestService.save(imageChambre);
	}
	
	@RequestMapping(value = "/imageChambres/{id}",method = RequestMethod.PUT)
	private ImageChambre update(@PathVariable Long id, @RequestBody ImageChambre imageChambre){
		imageChambre.setId_imageChambre(id);
		return imageChambreRestService.save(imageChambre);
	}
	
	@RequestMapping(value = "/imageChambres/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		imageChambreRestService.delete(id);
		return true;
	}
	

}
