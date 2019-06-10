package org.sid.dao;

import org.sid.entities.Chambre;
import org.sid.entities.Hotel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface ChambreRepository extends JpaRepository<Chambre, Long>{
	@Query("select c from Chambre c where c.id_chambre = (select max(c2.id_chambre) from Chambre c2)")
	Chambre getLastChambreAdded();
}
