package org.sid.dao;

import org.sid.entities.Hotel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface HotelRepository extends JpaRepository<Hotel, Long>{
	@Query("")
	public Page<Hotel> chercher(@Param("x")String mc, Pageable pageable);

}
