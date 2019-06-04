package org.sid.dao;

import org.sid.entities.Contact;
import org.sid.entities.ImageHotel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface ImageHotelRepository extends JpaRepository<ImageHotel, Long>{
	@Query("select c from ImageHotel c where c.image like :x")
	public Page<ImageHotel> chercher(@Param("x")String mc, Pageable pageable);

}
