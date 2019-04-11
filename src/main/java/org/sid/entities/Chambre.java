package org.sid.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Chambre implements Serializable{
		@Id @GeneratedValue
	private Long id_chambre;
	private Long id_hotel;
	private String description;
	private Long promotion;
	private Double prix;
	public Chambre() {
		super();
	}
	public Chambre(Long id_hotel, String description, Long promotion, Double prix) {
		super();
		this.id_hotel = id_hotel;
		this.description = description;
		this.promotion = promotion;
		this.prix = prix;
	}
	public Long getId_chambre() {
		return id_chambre;
	}
	public void setId_chambre(Long id_chambre) {
		this.id_chambre = id_chambre;
	}
	public Long getId_hotel() {
		return id_hotel;
	}
	public void setId_hotel(Long id_hotel) {
		this.id_hotel = id_hotel;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getPromotion() {
		return promotion;
	}
	public void setPromotion(Long promotion) {
		this.promotion = promotion;
	}
	public Double getPrix() {
		return prix;
	}
	public void setPrix(Double prix) {
		this.prix = prix;
	}
	
}

