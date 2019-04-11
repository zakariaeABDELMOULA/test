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
	private PersonneRepository PersonneRepository;
	
	@RequestMapping(value = "/reservations",method = RequestMethod.GET)
	private List<Personne> getreservations(){
		return PersonneRepository.findAll();
	}
	
	@RequestMapping(value = "/reservations/{id_personne}",method = RequestMethod.GET)
	private Personne getreservations(@PathVariable Long id_personne){
		return PersonneRepository.findOne(id_personne);
	}
	
	@RequestMapping(value = "/reservations",method = RequestMethod.POST)
	private Personne save(@RequestBody Personne personne){
		return PersonneRepository.save(personne);
	}
	
	@RequestMapping(value = "/reservations/{id_personne}",method = RequestMethod.PUT)
	private Personne update(@PathVariable Long id_personne, @RequestBody Personne personne){
		personne.setId_personne(id_personne);
		return PersonneRepository.save(personne);
	}
	
	@RequestMapping(value = "/reservations/{id_personne}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id_personne){
		PersonneRepository.delete(id_personne);
		return true;
	}
	

}
