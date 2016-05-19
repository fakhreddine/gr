package gestionreservation.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gestionreservation.spring.dao.HotelDAO;
import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.model.Hotel;

@Service
public class HotelServiceImpl implements HotelService {
	
	private HotelDAO hotelDAO;

	public void setHotelDAO(HotelDAO hotelDAO) {
		this.hotelDAO = hotelDAO;
	}

	@Transactional
	public void addHotel(Hotel p) {
		this.hotelDAO.addHotel(p);
	}

	@Transactional
	public void updateHotel(Hotel p) {
		this.hotelDAO.updateHotel(p);
	}

	@Transactional
	public List<Hotel> listHotels() {
		return this.hotelDAO.listHotels();
	}

	@Transactional
	public Hotel getHotelById(String id) {
		return this.hotelDAO.getHotelById(id);
	}

	@Transactional
	public void removeHotel(String id) {
		this.hotelDAO.removeHotel(id);
	}

	@Override
	public List<Chambre> getChambresByHotel(String idHotel) {
		return this.hotelDAO.getChambresByHotel(idHotel);
	}

	@Override
	public List<Hotel> listHotelsAdmin(String idUtilisateur) {
		return this.hotelDAO.listHotelsAdmin(idUtilisateur);
	}

	
}

