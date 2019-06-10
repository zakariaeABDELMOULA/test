package org.sid.dao;

import java.util.List;

import org.sid.entities.Personne;
import org.sid.entities.Reservation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReservationRepository extends JpaRepository<Reservation, Long>{
	
	@Query(value="    SELECT reservation.id_reservation,reservation.somme,reservation.etat,reservation.date_debut," + 
			"    reservation.date_fin,personne.nom as nom_client,personne.prenom as prenom_client," + 
			"    personne.telephone as telephone_client," + 
			"    personne.email as email_client,chambre.id_chambre as code_chambre,chambre.description  as description_chambre" + 
			"    FROM ((reservation INNER JOIN personne ON reservation.id_personne=personne.id_personne )" + 
			"          INNER JOIN  chambre ON reservation.id_chambre=chambre.id_chambre )", 
			  nativeQuery = true)
	List<Object> tous();
}
