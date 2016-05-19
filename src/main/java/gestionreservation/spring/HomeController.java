package gestionreservation.spring;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import gestionreservation.spring.model.Reservation;
import gestionreservation.spring.model.Role;
import gestionreservation.spring.model.Utilisateur;
import gestionreservation.spring.service.CategorieService;
import gestionreservation.spring.service.ChambreService;
import gestionreservation.spring.service.HotelService;
import gestionreservation.spring.service.OffreService;
import gestionreservation.spring.service.PensionService;
import gestionreservation.spring.service.ReservationService;
import gestionreservation.spring.service.SaisonService;
import gestionreservation.spring.service.TypechambreService;

@Controller
public class HomeController {
	
	
	@Autowired
	@Qualifier(value = "utilisateurServiceImpl")
	private UserDetailsService utilisateurService;
	public void setUtilisateurService(UserDetailsService ps) {
		this.utilisateurService = ps;
	}

	private ReservationService reservationService;
	@Autowired(required = true)
	@Qualifier(value = "reservationService")
	public void setReservationService(ReservationService ps) {
		this.reservationService = ps;
	}

	private TypechambreService typechambreService;
	@Autowired(required = true)
	@Qualifier(value = "typechambreService")
	public void setTypechambreService(TypechambreService ps) {
		this.typechambreService = ps;
	}

	private CategorieService categorieService;
	@Autowired(required = true)
	@Qualifier(value = "categorieService")
	public void setCategorieService(CategorieService ps) {
		this.categorieService = ps;
	}

	

	private SaisonService saisonService;
	@Autowired(required = true)
	@Qualifier(value = "saisonService")
	public void setSaisonService(SaisonService ps) {
		this.saisonService = ps;
	}
	
	
	
	@Autowired
	@Qualifier(value = "offreService")
	private OffreService offreService;
	public void setOffreService(OffreService ps) {
		this.offreService = ps;
	}
	
	@Autowired
	@Qualifier(value = "hotelService")
	private HotelService hotelService;
	public void setHotelService(HotelService ps) {
		this.hotelService = ps;
	}
	
	@Autowired
	@Qualifier(value = "pensionService")
	private PensionService pensionService;
	public void setPensionService(PensionService ps) {
		this.pensionService = ps;
	}
	
	@Autowired
	@Qualifier(value = "chambreService")
	private ChambreService chambreService;
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
		model.addAttribute("typechambres", this.typechambreService.listTypechambres());
		model.addAttribute("categories", this.categorieService.listCategories());
		model.addAttribute("pensions", this.pensionService.listPensions());
		model.addAttribute("saisons", this.saisonService.listSaisons());
		model.addAttribute("reservation", new Reservation());
		
		Date today;
		String dateOut;
		DateFormat dateFormatter;

		/*dateFormatter = DateFormat.getDateInstance(DateFormat.DEFAULT, currentLocale);
		today = new Date();
		dateOut = dateFormatter.format(today);

		System.out.println(dateOut + " " + currentLocale.toString());
		
		
		
		
		DateFormat df = DateFormat.getDateInstance(DateFormat.LONG, Locale.FRANCE);
		
		Date myDate = df.parse(myString);

		Date date_debut=Date.
		Date date_fin;*/
		Reservation r=new Reservation();
		model.addAttribute("reservation", r);
		
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
