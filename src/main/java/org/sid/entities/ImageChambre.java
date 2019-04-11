package org.sid.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class ImageChambre implements Serializable{
		@Id @GeneratedValue
	private Long id_imageChambre;
	private Long id_chambre;
	private String image;
	public ImageChambre() {
		super();
	}
	public ImageChambre(Long id_imageChambre, Long id_chambre, String image) {
		super();
		this.id_imageChambre = id_imageChambre;
		this.id_chambre = id_chambre;
		this.image = image;
	}
	public Long getId_imageChambre() {
		return id_imageChambre;
	}
	public void setId_imageChambre(Long id_imageChambre) {
		this.id_imageChambre = id_imageChambre;
	}
	public Long getId_chambre() {
		return id_chambre;
	}
	public void setId_chambre(Long id_chambre) {
		this.id_chambre = id_chambre;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}

