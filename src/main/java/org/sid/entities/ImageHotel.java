package org.sid.entities;

import java.io.Serializable;

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
