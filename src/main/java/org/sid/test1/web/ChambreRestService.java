package org.sid.test1.web;
import java.util.List;

import org.sid.dao.ChambreRepository;
import org.sid.entities.Chambre;
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
public class ChambreRestService {
	@Autowired
	private ChambreRepository chambreRestService;
	
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
	

}
