package org.sid.entities;

import java.io.Serializable;
<<<<<<< HEAD

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
=======

public class ImageHotel implements Serializable{

	private long id;
	private long id_hotel;
	private String image;
	public ImageHotel(long id_hotel, String image) {
		super();
		this.id_hotel = id_hotel;
		this.image = image;
	}
	public ImageHotel() {
		// TODO Auto-generated constructor stub
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getId_hotel() {
		return id_hotel;
	}
	public void setId_hotel(long id_hotel) {
		this.id_hotel = id_hotel;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}


}
>>>>>>> branch 'master' of https://github.com/zakariaeABDELMOULA/test.git
