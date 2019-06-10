package org.sid.dao;

import javax.transaction.Transactional;

import org.sid.entities.Chambre;
import org.sid.entities.ImageChambre;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface ImageChambreRepository extends JpaRepository<ImageChambre, Long>{
	@Transactional
	 @Modifying
	@Query("delete from ImageChambre c where c.id_chambre =  ?1)")
	Integer supprimerEnfant(Long id_chambre);
}
