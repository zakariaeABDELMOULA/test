package org.sid;
//test commentaire de l'aîd
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.sid.dao.ChambreRepository;
import org.sid.dao.ContactRepository;
import org.sid.dao.ImageHotelRepository;
import org.sid.dao.PersonneRepository;
import org.sid.entities.Chambre;
import org.sid.entities.Contact;
import org.sid.entities.ImageHotel;
import org.sid.entities.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication
public class TestApplication extends SpringBootServletInitializer implements CommandLineRunner{
	@Autowired
	private ContactRepository contactRepository; 
	@Autowired
	private	ImageHotelRepository imageHotelRepository;
	@Autowired
	private	PersonneRepository personneRepository;
	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}
	public void run(String... arg0) throws Exception {
		// TODO Auto-generated method stub
		//Modifi de premier enregistrement 
		//hamza test modification
		/*DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		contactRepository.save(new Contact("zakariae","abdelmoula",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("khadija","benmoussa",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("Hamid","Tayer",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		contactRepository.save(new Contact("Kaltoum ","omali",df.parse("10/02/1992"),"email@gmail.com","061413321","hasan.jpg"));
		
		//ajout de chambre  
		Long n =(long) 1;
		ImageHotel image = new ImageHotel(n, "premier hotel");
		System.out.println(image.getImage());
		imageHotelRepository.save(image);
		
		//ajout du personne 
		personneRepository.save(new Personne("ben ali", "ahmed", df.parse("10/02/1992"), "112Z", "maroc", "0664645464", "ihdf@df.com", "", "", "", ""));
	*/
	}
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TestApplication.class);
    }
}
