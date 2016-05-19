package gestionreservation.spring.model;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

import java.util.List;


/**
 * The persistent class for the typechambre database table.
 * 
 */
@Entity
@NamedQuery(name="Typechambre.findAll", query="SELECT t FROM Typechambre t")
public class Typechambre implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idTypechambre;

	private String descriptionType;

	//bi-directional many-to-one association to Chambre
	@OneToMany(mappedBy="typechambre")
	private List<Chambre> chambres;

	public Typechambre() {
	}

	public int getIdTypechambre() {
		return this.idTypechambre;
	}

	public void setIdTypechambre(int idTypechambre) {
		this.idTypechambre = idTypechambre;
	}

	public String getDescriptionType() {
		return this.descriptionType;
	}

	public void setDescriptionType(String descriptionType) {
		this.descriptionType = descriptionType;
	}

	public List<Chambre> getChambres() {
		return this.chambres;
	}

	public void setChambres(List<Chambre> chambres) {
		this.chambres = chambres;
	}

	public Chambre addChambre(Chambre chambre) {
		getChambres().add(chambre);
		chambre.setTypechambre(this);

		return chambre;
	}

	public Chambre removeChambre(Chambre chambre) {
		getChambres().remove(chambre);
		chambre.setTypechambre(null);

		return chambre;
	}

}