package org.sid.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(name="uniqueEmailh", columnNames = { "email" }))
public class Hotel implements Serializable{
	@Id @GeneratedValue
	private Long id_hotel;
	private String raison_social;
	@Temporal(TemporalType.DATE)
	private Date date_creation;
	private String adresse;
	private String pays;
	private String ville;
	private String telephone;
	private String email;
	private String password;
	private String description;
	private int etoiles;
	private String image;
	
	

	public Hotel() {
		// TODO Auto-generated constructor stub
	}



	public Hotel(String raison_social, Date date_creation, String adresse,
			String pays, String ville, String telephone, String email,
			String password, String description, int etoiles,String image) {
		super();
		this.raison_social = raison_social;
		this.date_creation = date_creation;
		this.adresse = adresse;
		this.pays = pays;
		this.ville = ville;
		this.telephone = telephone;
		this.email = email;
		this.password = password;
		this.description = description;
		this.etoiles = etoiles;
		this.image= image;
	}



	public String getRaison_social() {
		return raison_social;
	}



	public void setRaison_social(String raison_social) {
		this.raison_social = raison_social;
	}



	public Date getDate_creation() {
		return date_creation;
	}



	public void setDate_creation(Date date_creation) {
		this.date_creation = date_creation;
	}



	public String getAdresse() {
		return adresse;
	}



	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}



	public String getPays() {
		return pays;
	}



	public void setPays(String pays) {
		this.pays = pays;
	}



	public String getVille() {
		return ville;
	}



	public void setVille(String ville) {
		this.ville = ville;
	}



	public String getTelephone() {
		return telephone;
	}



	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}




	public Long getId_hotel() {
		return id_hotel;
	}



	public void setId_hotel(Long id_hotel) {
		this.id_hotel = id_hotel;
	}



	public int getEtoiles() {
		return etoiles;
	}



	public void setEtoiles(int etoiles) {
		this.etoiles = etoiles;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}
	
	

}
