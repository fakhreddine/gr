package gestionreservation.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.model.Reservation;
import gestionreservation.spring.service.CategorieService;
import gestionreservation.spring.service.PensionService;
import gestionreservation.spring.service.ReservationService;
import gestionreservation.spring.service.SaisonService;
import gestionreservation.spring.service.TypechambreService;

@Controller
public class ReservationController {
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

	private PensionService pensionService;

	@Autowired(required = true)
	@Qualifier(value = "pensionService")
	public void setPensionService(PensionService ps) {
		this.pensionService = ps;
	}

	private SaisonService saisonService;
	@Autowired(required = true)
	@Qualifier(value = "saisonService")
	public void setSaisonService(SaisonService ps) {
		this.saisonService = ps;
	}

	@RequestMapping(value = "/reservation/step-one", method = RequestMethod.GET)
	public String reservationsteptow(Model model) {
		model.addAttribute("typechambres", this.typechambreService.listTypechambres());
		model.addAttribute("categories", this.categorieService.listCategories());
		model.addAttribute("pensions", this.pensionService.listPensions());
		model.addAttribute("saisons", this.saisonService.listSaisons());
		model.addAttribute("reservation", new Reservation());
		return "reservation";
	}

	@RequestMapping(value = "/reservation/comfirm-step-one", method = RequestMethod.POST)
	public String reservationComfirmStepOne(@ModelAttribute("reservation") Reservation r2, Model model) {
		this.reservationService.addReservation(r2);
		model.addAttribute("reservation", r2);
		return "redirect:/reservation/" + r2.getIdReservation() + "/step-two";
	}

	@RequestMapping(value = "/reservation/{idreservation}/step-two", method = RequestMethod.GET)
	public String reservationsteptwo(@PathVariable("idreservation") String idreservation, Model model) {
		model.addAttribute("reservation", this.reservationService.getReservationById(idreservation));
		return "formulaire";
	}

	@RequestMapping(value = "/reservation/comfirm-step-two", method = RequestMethod.POST)
	public String reservationComfirmSteptow(@ModelAttribute("reservation") Reservation r2, Model model) {
		this.reservationService.updateReservation(r2);
		model.addAttribute("reservation", r2);
		return "redirect:/reservation/" + r2.getIdReservation() + "/step-three";
	}

	@RequestMapping(value = "/reservation/{idReservation}/step-three", method = RequestMethod.GET)
	public String reservationstepthree(@PathVariable("idreservation") String idreservation, Model model) {
		model.addAttribute("reservation", this.reservationService.getReservationById(idreservation));
		return "payement";
	}

	@RequestMapping(value = "/reservation/comfirm-step-three", method = RequestMethod.POST)
	public String reservationComfirmStepthree(@ModelAttribute("reservation") Reservation r2, Model model) {
		this.reservationService.updateReservation(r2);
		model.addAttribute("reservation", r2);
		return "redirect:/reservations";
	}

	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public String resever(Model model) {
		return "reservation";
	}

	@RequestMapping(value = "/reservations", method = RequestMethod.GET)
	public String listReservations(Model model) {
		// UserDetails user =
		// (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		// String name = user.getUsername(); //get logged in usernam
		model.addAttribute("listReservations", this.reservationService.listReservations());
		// model.addAttribute("name",name);
		return "reservations";
	}

	@RequestMapping("/reservation/{id}/remove")
	public String removeReservation(@PathVariable("id") int id) {

		this.reservationService.removeReservation(id);
		return "redirect:/reservations";
	}

	@RequestMapping("/reservation/{id}/edit")
	public String editReservation(@PathVariable("id") String id, Model model) {
		model.addAttribute("reservation", this.reservationService.getReservationById(id));
		model.addAttribute("listReservations", this.reservationService.listReservations());
		return "reservation";
	}

	/* les etapes de reservation par un client */
	@RequestMapping("/reservation/new")
	public String newReservation(Model model) {
		model.addAttribute("reservation", new Reservation());
		return "client/reservation";
	}

	@RequestMapping("/reservation/new1")
	public String newReservationtest(Model model) {
		model.addAttribute("reservation", new Reservation());
		return "client/testreservation";
	}

	@RequestMapping(value = "/reservation/add", method = RequestMethod.POST)
	public String addReservation(@ModelAttribute("reservation") Reservation r2) {

		r2 = new Reservation();
		List<Chambre> lc2 = new ArrayList<Chambre>();

		r2.setChambres(lc2);
		r2.setNbPersonne(8);
		// r2.setUtilisateur(user3);
		// session.save(r2);
		if (r2.getIdReservation() == null) {
			// new reservation, add it
			this.reservationService.addReservation(r2);
		} else {
			// existing reservation, call update
			this.reservationService.updateReservation(r2);
		}
		return "redirect:/reservation/" + r2.getIdReservation();

	}

	@RequestMapping(value = "/reservation/{id}", method = RequestMethod.GET)
	public String setreservation(@PathVariable("id") String id, Model model) {
		Reservation r = new Reservation();
		r = this.reservationService.getReservationById(id);
		model.addAttribute("reservation", this.reservationService.getReservationById(id));
		return "client/reservation";
	}

	@RequestMapping(value = "/reservation/comfirmer", method = RequestMethod.POST)
	public String comfirmereservation(@ModelAttribute("reservation") Reservation r2, Model model) {
		// this.reservationService.comfirmerReservation(r2);
		model.addAttribute("reservation", r2);
		return "client/reservation" + r2.getIdReservation();
	}

	/* les etapes de reservation par un agent */
	@RequestMapping(value = "/reservation/comfirmerarriver", method = RequestMethod.POST)
	public String comfirmerarriver(@ModelAttribute("reservation") Reservation r2, Model model) {
		// this.reservationService.comfirmerArriver(r2);
		model.addAttribute("reservation", r2);
		return "client/reservation" + r2.getIdReservation();
	}

}
