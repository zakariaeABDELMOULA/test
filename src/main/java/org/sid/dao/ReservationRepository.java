package org.sid.dao;

import org.sid.entities.Contact;
import org.sid.entities.Reservation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReservationRepository extends JpaRepository<Reservation, Long>{
	@Query("")
	public Page<Reservation> chercher(@Param("x")String mc, Pageable pageable);
}
