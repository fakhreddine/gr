package gestionreservation.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.model.Pension;
import gestionreservation.spring.model.Role;
import gestionreservation.spring.model.Utilisateur;
import gestionreservation.spring.service.ChambreService;
import gestionreservation.spring.service.HotelService;
import gestionreservation.spring.service.OffreService;
import gestionreservation.spring.service.PensionService;

@Controller
public class HomeController {
	@Autowired
	@Qualifier(value = "utilisateurServiceImpl")
	private UserDetailsService utilisateurService;

	public void setUtilisateurService(UserDetailsService ps) {
		this.utilisateurService = ps;
	}
	@Autowired
	@Qualifier(value = "offreService")
	private OffreService offreService;
	@Autowired
	@Qualifier(value = "hotelService")
	private HotelService hotelService;
	@Autowired
	@Qualifier(value = "chambreService")
	private ChambreService chambreService;
	@Autowired
	@Qualifier(value = "pensionService")
	private PensionService pensionService;

	public void setOffreService(OffreService ps) {
		this.offreService = ps;
	}
	
	public void setHotelService(HotelService ps) {
		this.hotelService = ps;
	}
	
	public void setPensionService(PensionService ps) {
		this.pensionService = ps;
	}
	
	public void setChambreService(ChambreService ps) {
		this.chambreService = ps;
	}
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String gallery(ModelMap model) {
		return "gallery";
	}
	
	@RequestMapping(value = "/header/{idpage}", method = RequestMethod.GET)
	public String login_singup(@PathVariable("idpage") int idpage,ModelMap model) {
		model.addAttribute("idpage",idpage);
		return "header";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(Model model) {
		return "header";
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer(Model model) {
		return "footer";
	}
	
	@RequestMapping(value = "/about_us", method = RequestMethod.GET)
	public String about(Model model) {
		return "about_us";
	}
}
