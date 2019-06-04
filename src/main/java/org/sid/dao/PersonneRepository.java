package org.sid.dao;

import java.util.List;

import org.sid.entities.Personne;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface PersonneRepository extends JpaRepository<Personne, Long>{

	/*@Query("select p from Personne p where p.email = :x and p.mdp = :y")
	public Page<Personne> authentification(@Param("x")String email,@Param("y")String mdp);
	
	List<Personne> authentification(String email,String mdp);
	*/
	@Query("select p from Personne p where p.email = ?1 and p.mdp = ?2")
	Personne authentification(String email, String mdp);
}
