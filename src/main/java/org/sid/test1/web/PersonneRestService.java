package org.sid.test1.web;
import java.util.List;

import org.sid.dao.PersonneRepository;
import org.sid.entities.Personne;
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
public class PersonneRestService {
	@Autowired
	private PersonneRepository personneRestService;
	
	@RequestMapping(value = "/personnes",method = RequestMethod.GET)
	private List<Personne> getPersonnes(){
		return personneRestService.findAll();
	}
	
	@RequestMapping(value = "/personnes/{id}",method = RequestMethod.GET)
	private Personne getPersonnes(@PathVariable Long id){
		return personneRestService.findOne(id);
	}
	
	@RequestMapping(value = "/personnes",method = RequestMethod.POST)
	private Personne save(@RequestBody Personne personne){
		return personneRestService.save(personne);
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
