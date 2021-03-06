package gestionreservation.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.model.Hotel;

@Repository
public class HotelDAOImpl implements HotelDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(HotelDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void addHotel(Hotel p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Hotel saved successfully, Hotel Details="+p);
	}

	public void updateHotel(Hotel p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Hotel updated successfully, Hotel Details="+p);
	}

	@SuppressWarnings("unchecked")

	public List<Hotel> listHotels() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Hotel> hotelsList = session.createQuery("from Hotel").list();
		for(Hotel p : hotelsList){
			logger.info("Hotel List::"+p);
		}
		return hotelsList;
	}

	public Hotel getHotelById(String id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Hotel p = (Hotel) session.load(Hotel.class, new String(id));
		logger.info("Hotel loaded successfully, Hotel details="+p);
		return p;
	}

	public void removeHotel(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		Hotel p = (Hotel) session.load(Hotel.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Hotel deleted successfully, hotel details="+p);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Chambre> getChambresByHotel(String idHotel) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Chambre> chambresList = session.createQuery("from Chambre where idHotel='"+idHotel+"'").list();
		for(Chambre p : chambresList){
			logger.info("Hotel List::"+p);
		}
		return chambresList;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Hotel> listHotelsAdmin(String idUtilisateur) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Hotel> hotelsList = session.createQuery("from Hotel").list();
		for(Hotel p : hotelsList){
			logger.info("Hotel List::"+p);
		}
		return hotelsList;
	}

}
