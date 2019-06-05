package org.sid.test1.web;
import java.util.List;

import org.sid.dao.ContactRepository;
import org.sid.entities.Contact;
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
public class ContactRestService {
	@Autowired
	private ContactRepository contactRepository;
	
	@RequestMapping(value = "/contacts",method = RequestMethod.GET)
	private List<Contact> getContacts(){
		return contactRepository.findAll();
	}
	
	@RequestMapping(value = "/contacts/{id}",method = RequestMethod.GET)
	private Contact getContacts(@PathVariable Long id){
		return contactRepository.findOne(id);
	}
	
	@RequestMapping(value = "/contacts",method = RequestMethod.POST)
	private Contact save(@RequestBody Contact contact){
		return contactRepository.save(contact);
	}
	
	@RequestMapping(value = "/contacts/{id}",method = RequestMethod.PUT)
	private Contact update(@PathVariable Long id, @RequestBody Contact contact){
		contact.setId(id);
		return contactRepository.save(contact);
	}
	
	///Modiffff zakariae
	
	@RequestMapping(value = "/contacts/{id}",method = RequestMethod.DELETE)
	private boolean supprimer(@PathVariable Long id){
		contactRepository.delete(id);
		return true;
	}
	

}
