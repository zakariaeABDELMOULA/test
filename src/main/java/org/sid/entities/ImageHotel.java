package org.sid.entities;

import java.io.Serializable;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class ImageHotel implements Serializable{
		@Id @GeneratedValue
	private Long id_imageHotel;
	private Long id_hotel;
	private String image;
	public ImageHotel() {
		super();
	}
	public ImageHotel( Long id_hotel, String image) {
		super();
		this.id_hotel = id_hotel;
		this.image = image;
	}
	public Long getId_imageHotel() {
		return id_imageHotel;
	}
	public void setId_imageHotel(Long id_imageHotel) {
		this.id_imageHotel = id_imageHotel;
	}
	public Long getId_chambre() {
		return id_hotel;
	}
	public void setId_chambre(Long id_hotel) {
		this.id_hotel = id_hotel;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}