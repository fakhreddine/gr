package gestionreservation.spring;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gestionreservation.spring.model.Hotel;
import gestionreservation.spring.model.Role;
import gestionreservation.spring.model.Utilisateur;
import gestionreservation.spring.service.ChambreService;
import gestionreservation.spring.service.HotelService;
import gestionreservation.spring.service.UtilisateurServiceImpl;

@Controller
public class HotelController {
	@Autowired
	@Qualifier(value = "utilisateurServiceImpl")
	private UserDetailsService utilisateurService;

	public void setUtilisateurService(UserDetailsService ps) {
		this.utilisateurService = ps;
	}
	
	//private UtilisateurServiceImpl utilisateurService;
	
//	@Autowired
//	@Qualifier(value="utilisateurServiceImpl")
//	public void setUtilisateurService(UtilisateurServiceImpl ps){
//		this.utilisateurService = ps;
//	}
	
	
	@Autowired(required=true)
	@Qualifier(value="hotelService")
	private HotelService hotelService;
	public void setHotelService(HotelService ps){
		this.hotelService = ps;
	}
	
	private ChambreService chambreService;	
	@Autowired(required=true)
	@Qualifier(value="chambreService")
	public void setChambreService(ChambreService ps){
		this.chambreService = ps;
	}
	
	
	
	@RequestMapping(value = "/hotels", method = RequestMethod.GET)
	public String listHotels(Model model) {
		model.addAttribute("hotel", new Hotel());
		model.addAttribute("hotels", this.hotelService.listHotels());
		return "hotels";
	}
	@RequestMapping(value = "/hotel/{idHotel}", method = RequestMethod.GET)
	public String consulterHotel(@PathVariable("idHotel") String idHotel, Model model){
		model.addAttribute("chambres", this.hotelService.getChambresByHotel(idHotel));
        model.addAttribute("hotel", this.hotelService.getHotelById(idHotel));
		return "hotel";
	}
	
	//For add and update person both
	@RequestMapping(value= "/hotel/add", method = RequestMethod.POST)
	
	public String addHotel(@ModelAttribute("hotel") Hotel p) {
		this.hotelService.addHotel(p);
		return "redirect:/hotels";	
	}
	
	@RequestMapping("/hotel/{idHotel}/remove")
    public String removeHotel(@PathVariable("idHotel") String id){
		
        this.hotelService.removeHotel(id);
        return "redirect:/hotels";
    }
 
    @RequestMapping("/hotel/{idHotel}/edit")
    public String editHotel(@PathVariable("idHotel") String id, Model model){
        model.addAttribute("hotel", this.hotelService.getHotelById(id));
        model.addAttribute("listHotels", this.hotelService.listHotels());
        return "hotel";
    }
    @RequestMapping(value = "/initialise", method = RequestMethod.GET)
	public String initialise(Model model) {
    	Utilisateur user = new Utilisateur();
      user.setPrenomPers("firstName");
      user.setNomPers("lastName");
      user.setLogin("user");
      user.setEmailPers("user");
      user.setMotDePass("1111");
      Role r = new Role();
      r.setDescriptionRole("Admin");
      List<Role> roles = new ArrayList<Role>();
      roles.add(r);
      user.setAuthorities(roles);
    //  this.utilisateurService.addUtilisateur(user);
      return "hotel";
	}
}
