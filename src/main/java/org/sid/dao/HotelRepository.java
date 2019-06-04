package org.sid.dao;

import org.sid.entities.Hotel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface HotelRepository extends JpaRepository<Hotel, Long>{

	@Query("select h from Hotel h where h.email = ?1 and h.password = ?2")
	Hotel authentification(String email, String password);	


}
