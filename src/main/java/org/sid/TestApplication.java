package org.sid;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.sid.dao.ContactRepository;
import org.sid.entities.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TestApplication implements CommandLineRunner{
	@Autowired
	private ContactRepository contactRepository;
	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}
	public void run(String... arg0) throws Exception {
		// TODO Auto-generated method stub
		//Modification de premier enregistrement
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		contactRepository.save(new Contact("zakariae","abdelmoula",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("khadija","benmoussa",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("Hamid","Tayer",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("Kaltoum","omali",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));


	}

}
