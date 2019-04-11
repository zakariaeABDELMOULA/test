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
	private Long id_personne;
	private String nom;
	private String prenom;
		@Temporal(TemporalType.DATE)
	private Date date_naissance;
	private String cin;
	private String pays;
	private String telephone;
	private String email;
	private String mdp;
	private String type;
	private String etat = "en traitement";
	private String image;
	public Chambre(Long id_personne, String nom, String prenom, Date date_naissance, String cin, String pays,
			String telephone, String email, String mdp, String type, String etat, String image) {
		super();
		this.id_personne = id_personne;
		this.nom = nom;
		this.prenom = prenom;
		this.date_naissance = date_naissance;
		this.cin = cin;
		this.pays = pays;
		this.telephone = telephone;
		this.email = email;
		this.mdp = mdp;
		this.type = type;
		this.etat = etat;
		this.image = image;
	}
	public Chambre() {
		super();
	}
	public Long getId_personne() {
		return id_personne;
	}
	public void setId_personne(Long id_personne) {
		this.id_personne = id_personne;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public Date getDate_naissance() {
		return date_naissance;
	}
	public void setDate_naissance(Date date_naissance) {
		this.date_naissance = date_naissance;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getPays() {
		return pays;
	}
	public void setPays(String pays) {
		this.pays = pays;
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
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
