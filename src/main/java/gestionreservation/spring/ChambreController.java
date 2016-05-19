package gestionreservation.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.service.CategorieService;
import gestionreservation.spring.service.ChambreService;
import gestionreservation.spring.service.HotelService;
import gestionreservation.spring.service.TypechambreService;

@Controller
public class ChambreController {
	private static final String String = null;
	@Autowired
	@Qualifier(value = "utilisateurServiceImpl")
	private UserDetailsService utilisateurService;
	public void setUtilisateurService(UserDetailsService ps) {
		this.utilisateurService = ps;
	}

	private ChambreService chambreService;
	@Autowired(required=true)
	@Qualifier(value="chambreService")
	public void setChambreService(ChambreService ps){
		this.chambreService = ps;
	}
	
	private CategorieService categorieService;	
	@Autowired(required=true)
	@Qualifier(value="categorieService")
	public void setCategorieService(CategorieService ps){
		this.categorieService = ps;
	}
	
	private TypechambreService typechambreService;
	@Autowired(required=true)
	@Qualifier(value="typechambreService")
	public void setTypechambreService(TypechambreService ps){
		this.typechambreService = ps;
	}
	
	@Autowired(required=true)
	@Qualifier(value="hotelService")
	private HotelService hotelService;
	public void setHotelService(HotelService ps){
		this.hotelService = ps;
	}
	
	
	@RequestMapping(value = "/rooms", method = RequestMethod.GET)
	public String listChambres(Model model) {
		String idUtilisateur = "144";
		model.addAttribute("chambre", new Chambre());
		model.addAttribute("categories", this.categorieService.listCategories());
		model.addAttribute("typechambres", this.typechambreService.listTypechambres());
		model.addAttribute("hotelsadmin", this.hotelService.listHotels());
		model.addAttribute("chambres", this.chambreService.listChambres());
		return "chambres";
	}
	
	//For add and update person both
	@RequestMapping(value= "/room/add", method = RequestMethod.POST)
	
	public String addChambre(@ModelAttribute("chambre") Chambre p) {
		this.chambreService.addChambre(p);
		
		return "redirect:/rooms";
		
	}
	
	@RequestMapping("/chambre/{idChambre}/remove")
    public String removeChambre(@PathVariable("idChambre") int id){
		
        this.chambreService.removeChambre(id);
        return "redirect:/chambres";
    }
 
    @RequestMapping("/chambre/{idChambre}/edit")
    public String editChambre(@PathVariable("idChambre") int id, Model model){
        model.addAttribute("chambre", this.chambreService.getChambreById(id));
        model.addAttribute("listChambres", this.chambreService.listChambres());
        return "chambre";
    }
	
}
