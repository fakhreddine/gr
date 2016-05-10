package gestionreservation.spring.service;

import java.util.List;

import gestionreservation.spring.model.Hotel;


public interface HotelService {

	public void addHotel(Hotel p);
	public void updateHotel(Hotel p);
	public List<Hotel> listHotels();
	public Hotel getHotelById(String id);
	public void removeHotel(String id);
	
}
