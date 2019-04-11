package org.sid.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Reservation implements Serializable{
	@Id @GeneratedValue
	private Long id_reservation;
	private Long id_personne;
	private Long id_chambre;
		@Temporal(TemporalType.DATE)
	private Date date_debut;
		@Temporal(TemporalType.DATE)
	private Date date_fin;
	private Double somme;
	public Reservation(Long id_reservation, Long id_personne, Long id_chambre, Date date_debut, Date date_fin,
			Double somme) {
		super();
		this.id_reservation = id_reservation;
		this.id_personne = id_personne;
		this.id_chambre = id_chambre;
		this.date_debut = date_debut;
		this.date_fin = date_fin;
		this.somme = somme;
	}
	public Reservation() {
		super();
	}
	public Long getId_reservation() {
		return id_reservation;
	}
	public void setId_reservation(Long id_reservation) {
		this.id_reservation = id_reservation;
	}
	public Long getId_personne() {
		return id_personne;
	}
	public void setId_personne(Long id_personne) {
		this.id_personne = id_personne;
	}
	public Long getId_chambre() {
		return id_chambre;
	}
	public void setId_chambre(Long id_chambre) {
		this.id_chambre = id_chambre;
	}
	public Date getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(Date date_debut) {
		this.date_debut = date_debut;
	}
	public Date getDate_fin() {
		return date_fin;
	}
	public void setDate_fin(Date date_fin) {
		this.date_fin = date_fin;
	}
	public Double getSomme() {
		return somme;
	}
	public void setSomme(Double somme) {
		this.somme = somme;
	}
	
}
