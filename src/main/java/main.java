import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;

import gestionreservation.spring.model.Categorie;
import gestionreservation.spring.model.Chambre;
import gestionreservation.spring.model.Hotel;
import gestionreservation.spring.model.Offre;
import gestionreservation.spring.model.Pension;
import gestionreservation.spring.model.Reservation;
import gestionreservation.spring.model.Role;
import gestionreservation.spring.model.Saison;
import gestionreservation.spring.model.Typechambre;
import gestionreservation.spring.model.Utilisateur;
import gestionreservation.spring.security.MD5;

class main {
	public static void main(final String[] args) throws Exception {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		
		/*Categorie*/
		Categorie cat1 = new Categorie();
		cat1.setLabelCatgorie("Chambre HARMONY");
		cat1.setDescriptionCatgorie("Chambre pour 1 ou 2 personnes, totalement rénovée dans un design très contemporain.Moins spacieuse que la chambre Tradition mais avec beaucoup de charme, elle bénéficie de toutes les prestations et du confort nécessaires: climatisation réversible, minibar, coffre-fort, bureau, téléviseur aux 50 chaînes françaises et internationales, accès wifi gratuit. Salle de bain uniquement avec douche. Literie avec un lit en largeur 160. Il n'est pas possible d'avoir 2 lits séparés dans cette catégorie de chambre. ");
		session.save(cat1);
		Categorie cat2 = new Categorie();
		cat2.setLabelCatgorie("Chambre TRADITION");
		cat2.setDescriptionCatgorie("Cette chambre pour 1 ou 2 personnes, plus spacieuse que la chambre Harmony mais à la décoration plus ancienne, offre le choix entre un lit Double en largeur 180 ou 2 lits séparés en largeur 90. Cette possibilité, pour être pris en compte, doit impérativement être signifiée au moment de la réservation ou au plus tard la veille de l'arrivée. Dans le cas ou celà n'aurait été précisé, la chambre sera dressée avec un lit Double et ne pourra plus être modifiée.Équipement de la chambre: douche ou baignoire, climatisation, minibar, coffre-fort, bureau, téléviseur avec ses 50 chaînes françaises et internationales, accès wifi gratuit.");
		session.save(cat2);
		Categorie cat3 = new Categorie();
		cat3.setLabelCatgorie("Chambre TRIPLE");
		cat3.setDescriptionCatgorie("Chambre pour 3 personnes tout confort: climatisation réversible, minibar, coffre-fort, bureau, téléviseur aux 50 chaînes françaises et internationales, accès wifi gratuit.  Lors de la réservation de cette chambre, ou au plus tard la veille de votre arrivée, vous devez préciser si vous souhaitez un lit Double avec un lit Simple ou si vous optez pour 3 lits séparés. Dans le cas où rien n'aurait été précisé, la chambre sera préparée avec 2 lits, un lit Double et un lit Simple, et l'hôtel n'aura plus la possibilité de la modifier.");
		session.save(cat3);
		Categorie cat4 = new Categorie();
		cat4.setLabelCatgorie("Chambre FAMILIALE");
		cat4.setDescriptionCatgorie("Cette chambre familiale pour 4 personnes, avec douche à l'italienne à jets, lumineuse, moderne et totalement rénovée, est l'assurance d'un agréable séjour. Vous apprécierez sa décoration contemporaine et ses prestations de standing: climatisation reversible, minibar, coffre-fort, sèche-cheveux, bureau, dressing, téléviseur grand écran en 140 cm aux 50 chaînes françaises et internationales ainsi qu'un accès wifi gratuit. Cette chambre dispose de plus, d'un canapé-lit donnant la possibilité d'accueillir une 5ème personne avec un supplément de prix. Prévue avec un lit Double pour les parents et 2 lits Simples pour les enfants, elle peut être réservée, soit avec 4 lits séparés, soit avec 2 lits Doubles. Pour être prise en compte, cette demande doit nous parvenir, au plus tard, la veille de l'arrivée.");
		session.save(cat4);
		Categorie cat5 = new Categorie();
		cat5.setLabelCatgorie("Chambre PRIVILEGE");
		cat5.setDescriptionCatgorie("Chambre pour 2 personnes, très spacieuse, totalement rénovée, disposant d'un coin salon avec canapé, table basse et téléviseur grand écran diffusant 50 chaînes françaises et internationales. Son équipement grand confort avec climatisation réversible, minibar, coffre-fort, bureau, dressing et un accès wi-fi gratuit ainsi que sa magnifique salle de bain avec douche à l'Italienne et à jets, vous donne l'assurance de passer un agréable séjour. Possibilité de 2 lits séparés sur demande.");
		session.save(cat5);
		Categorie cat6 = new Categorie();
		cat6.setLabelCatgorie("Chambre avec Supplément Terrasse Privée");
		cat6.setDescriptionCatgorie("Quelque soit la catégorie de chambre que vous avez choisi de nous réserver, HARMONY, TRADITION, TRIPLE ou FAMILIALE, vous pouvez disposer, avec supplément de prix, d'une chambre donnant sur une belle et grande terrasse privée avec fauteuils, relax et table basse, couverte de parasol ou de tonnelle.Vu le peu de chambre de ce type dont nous disposons, il est impératif d'en faire la demande directement à l'hôtel par mail ou téléphone.Seule la réponse de l'hôtel, par un mail de confirmation, peut en garantir la réservation.Une confirmation de l'hôtel faîte par téléphone n'a aucune valeur.En cas de non réponse de l'hôtel, vous devez réitérer votre demande et surtout ne pas considérer que votre demande a été prise en compte.Le montant du supplément est le suivant:25 euros par jour du 1er mai au 30 septembre 15 euros par jour en avril et octobre 10 euros par jour du 1er novembre au 31 mars Ces tarifs sont identiques quelque soit la catégorie de chambre choisie.   ");
		session.save(cat6);
	
		/*types chambres*/
		Typechambre tc1=new Typechambre();
		tc1.setDescriptionType("CHAMBRE JARDIN");
		session.save(tc1);
		Typechambre tc2=new Typechambre();
		tc2.setDescriptionType("CHAMBRE VUE MER");
		session.save(tc2);
		Typechambre tc3=new Typechambre();
		tc3.setDescriptionType("STUDIO VUE MER");
		session.save(tc3);
		Typechambre tc4=new Typechambre();
		tc4.setDescriptionType("Autre");
		session.save(tc4);
		
		
		
		
		
		
		/*pension*/
		Pension pens1=new Pension();
		pens1.setLabelPension("Tout Inclus / All Inclusive");
		pens1.setDescriptionPension("cette formule comprend l'hébergement, les repas avec boisson (eau minérale, jus de fruits, sodas, vins, alcool locaux). Certains alcools, ainsi que les boissons hors repas, peuvent ne pas être compris dans la formule et faire l'objet d'une facturation additionnelle par l'hôtelier.");
		session.save(pens1);
		Pension pens2=new Pension();
		pens2.setLabelPension("Pension complète");
		pens2.setDescriptionPension(" cette formule comprend l'hébergement et tous les repas (généralement hors boisson)");
		session.save(pens2);
		Pension pens3=new Pension();
		pens3.setLabelPension("Demi-pension");
		pens3.setDescriptionPension("cette formule comprend l'hébergement, les petits déjeuners et déjeuners ou dîners selon les cas, sans les boissons.");
		session.save(pens3);
		Pension pens4=new Pension();
		pens4.setLabelPension("Petit-déjeuner");
		pens4.setDescriptionPension(" cette formule comprend l'hébergement et les petits déjeuners. Les boissons ne sont pas incluses dans les prix, sauf indication contraire.");
		session.save(pens4);
		
		/*role*/
		Role admin=new Role();
		admin.setDescriptionRole("ADMIN");
		session.save(admin);
		Role client=new Role();
		client.setDescriptionRole("CLIENT");
		session.save(client);
		Role agent=new Role();
		agent.setDescriptionRole("AGENT");
		session.save(agent);
		
		/*Utilisateur*/
		Utilisateur user0=new Utilisateur();
		user0.setLogin("admin1");
		user0.setEmailPers("admin1");
		user0.setMotDePass(MD5.tomd5("1111"));//MD5 de mot de pass : 1111
		user0.setAdressePers("RUE 54");
		user0.setEnabled(true);
		user0.setAccountNonExpired(true);
		user0.setAccountNonLocked(true);
		user0.setEnabled(true);
		user0.setVillePers("Sousse");
		List<Role> lr0=new ArrayList<Role>();
		lr0.add(admin);
		user0.setAuthorities(lr0);
		session.save(user0);
		
		Utilisateur user1=new Utilisateur();
		user1.setLogin("admin");
		user1.setEmailPers("admin");
		user1.setMotDePass("b59c67bf196a4758191e42f76670ceba");//MD5 de mot de pass : 1111
		user1.setAdressePers("RUE 5");
		user1.setEnabled(true);
		user1.setAccountNonExpired(true);
		user1.setAccountNonLocked(true);
		user1.setEnabled(true);
		user1.setVillePers("Monastir");
		List<Role> lr1=new ArrayList<Role>();
		lr1.add(admin);
		user1.setAuthorities(lr1);
		session.save(user1);
		
		Utilisateur user12=new Utilisateur();
		user12.setLogin("admin1");
		user12.setEmailPers("admin1");
		user12.setMotDePass("b59c67bf196a4758191e42f76670ceba");//MD5 de mot de pass : 1111
		user12.setAdressePers("RUE 66");
		user12.setEnabled(true);
		user12.setAccountNonExpired(true);
		user12.setAccountNonLocked(true);
		user12.setEnabled(true);
		user12.setVillePers("Monastir");
		List<Role> lr12=new ArrayList<Role>();
		lr12.add(admin);
		user1.setAuthorities(lr12);
		session.save(user12);
		
		Utilisateur user2=new Utilisateur();
		user2.setLogin("client");
		user2.setEmailPers("client");
		user2.setMotDePass("b59c67bf196a4758191e42f76670ceba");//MD5 de mot de pass : 1111
		user2.setAdressePers("RUE 4");
		user2.setEnabled(true);
		user2.setAccountNonExpired(true);
		user2.setAccountNonLocked(true);
		user2.setEnabled(true);
		user2.setVillePers("Monastir");
		List<Role> lr2=new ArrayList<Role>();
		lr2.add(client);
		user2.setAuthorities(lr2);
		session.save(user2);
		

		Utilisateur user22=new Utilisateur();
		user22.setLogin("admin3");
		user22.setEmailPers("admin3");
		user22.setMotDePass("b59c67bf196a4758191e42f76670ceba");//MD5 de mot de pass : 1111
		user22.setAdressePers("RUE 45");
		user22.setEnabled(true);
		user22.setAccountNonExpired(true);
		user22.setAccountNonLocked(true);
		user22.setEnabled(true);
		user22.setVillePers("Monastir");
		List<Role> lr22=new ArrayList<Role>();
		lr22.add(admin);
		user22.setAuthorities(lr22);
		session.save(user22);
		
		Utilisateur user3=new Utilisateur();
		user3.setLogin("agent");
		user3.setEmailPers("agent");
		user3.setMotDePass("b59c67bf196a4758191e42f76670ceba");//MD5 de mot de pass : 1111
		user3.setAdressePers("RUE 3");
		user3.setEnabled(true);
		user3.setAccountNonExpired(true);
		user3.setAccountNonLocked(true);
		user3.setEnabled(true);
		user3.setVillePers("Monastir");
		List<Role> lr3=new ArrayList<Role>();
		lr3.add(agent);
		user2.setAuthorities(lr3);
		session.save(user3);
		
		
		
		
		
		
		
		/*hotels*/
		Hotel hot1=new Hotel();
		hot1.setNomHotel("Regency Hotel and Spa");
		hot1.setDescriptionHotel("Le Regency Hotel and Spa est situé à Monastir, à 5 minutes à pied du centre-ville.");
		hot1.setCodePostalHotel(1000);
		hot1.setDirecteur(user1);
		hot1.setFaxHotel("3554585");
		hot1.setNbEtoil(3);
		session.save(hot1);
		
		Hotel hot2=new Hotel();
		hot2.setNomHotel("Private Apartment at Marina Monastir");
		hot2.setDescriptionHotel("Offering accommodation with air conditioning, Marina Monastir is located in Monastir, 18 km from Sousse. Port El Kantaoui is 24 km away. All units have a TV with satellite channels.");
		hot2.setCodePostalHotel(1000);
		hot2.setDirecteur(user1);
		hot2.setFaxHotel("7355545485");
		hot2.setNbEtoil(4);
		session.save(hot2);
		
		Hotel hot3=new Hotel();
		hot3.setNomHotel("Corniche Hotel");
		hot3.setDescriptionHotel("La Corniche Guesthouse Monastir se trouve à côté de la mer, à 10 minutes à pied du centre-ville de Monastir. Elle dispose d'un parking gratuit sur place et propose des chambres climatisées.");
		hot3.setCodePostalHotel(1000);
		hot3.setDirecteur(user22);
		hot3.setFaxHotel("735554548");
		hot3.setNbEtoil(5);
		session.save(hot3);
		
		Hotel hot4=new Hotel();
		hot4.setNomHotel("Delphin Habib");
		hot4.setDescriptionHotel("Situé sur le front de mer en plein centre-ville de Monastir, le Delphin El Habib rouvre ses portes sur un hall d'entrée majestueux après d'intenses travaux de rénovation complets et de modernisation...");
		hot4.setCodePostalHotel(1000);
		hot4.setDirecteur(user22);
		hot4.setFaxHotel("735554548");
		hot4.setNbEtoil(5);
		session.save(hot4);
		
		Hotel hot5=new Hotel();
		hot5.setNomHotel("Monastir Center");
		hot5.setDescriptionHotel("Le Monastir Center est situé dans le centre-ville de Monastir, en Tunisie. Cet hôtel 4 étoiles propose des chambres avec balcon privé surplombant la piscine extérieure et la mer.");
		hot5.setCodePostalHotel(1000);
		hot5.setDirecteur(user22);
		hot5.setFaxHotel("735554548");
		hot5.setNbEtoil(3);
		session.save(hot5);
		
		Hotel hot6=new Hotel();
		hot6.setNomHotel("Caribbean World Monastir - All Inclusive");
		hot6.setDescriptionHotel("Situated next to the beach, Club Caribbean World Monastir Resort is set in large gardens and offers excellent family entertainment, its own water park and complimentary breakfast.");
		hot6.setCodePostalHotel(1000);
		hot6.setDirecteur(user22);
		hot6.setFaxHotel("735554548");
		hot6.setNbEtoil(3);
		session.save(hot6);
		
		Hotel hot7=new Hotel();
		hot7.setNomHotel("Villa Monastir");
		hot7.setDescriptionHotel("Cette villa est située à Monastir, à 18 km de Sousse. Vous bénéficierez du stationnement privé gratuit. La villa comprend une salle de bains privative avec une baignoire et un bidet..");
		hot7.setCodePostalHotel(1000);
		hot7.setDirecteur(user22);
		hot7.setFaxHotel("735554548");
		hot7.setNbEtoil(3);
		session.save(hot7);
		
		Hotel hot8=new Hotel();
		hot8.setNomHotel("Marina Cap Monastir- Appart'hôtel");
		hot8.setDescriptionHotel("A côté de la marina et de la plage, à 10 minutes à pied du centre-ville, l'appart'hôtel Marina Cap Monastir est idéal pour un séjour de détente. L'hôtel compte 57 appartements, du studio au 4 pièces.");
		hot8.setCodePostalHotel(1000);
		hot8.setDirecteur(user22);
		hot8.setFaxHotel("735554548");
		hot8.setNbEtoil(3);
		session.save(hot8);

		Hotel hot9=new Hotel();
		hot9.setNomHotel("Ramada Liberty Hotel");
		hot9.setDescriptionHotel("Situé à Monastir, dans la région de Skanes, l'établissement 4 étoiles Ramada Liberty Hotel se situe à 150 mètres d'une plage privée.");
		hot9.setCodePostalHotel(1000);
		hot9.setDirecteur(user22);
		hot9.setFaxHotel("735554548");
		hot9.setNbEtoil(3);
		session.save(hot9);
		
		Hotel hot10=new Hotel();
		hot10.setNomHotel("Caribbean World Monastir - All Inclusive");
		hot10.setDescriptionHotel("Situé à proximité de la plage, le Club Caribbean World Monastir Resort est entouré de grands jardins et propose des divertissements familiaux, dont un parc aquatique.");
		hot10.setCodePostalHotel(1000);
		hot10.setDirecteur(user22);
		hot10.setFaxHotel("735554548");
		hot10.setNbEtoil(3);
		session.save(hot10);
		
		
		
		/*Chambre*/
		Chambre c1 = new Chambre();
		c1.setCategorie(cat1);
		c1.setTypechambre(tc1);
		c1.setActiver(true);
		c1.setNumChambre(1);
		c1.setTelChambre(104);
		c1.setHotel(hot1);
		session.save(c1);
		
		Chambre c2 = new Chambre();
		c2.setCategorie(cat2);
		c2.setTypechambre(tc3);
		c2.setActiver(true);
		c2.setNumChambre(1);
		c2.setTelChambre(145);
		c2.setHotel(hot3);
		session.save(c2);
		
		Chambre c3 = new Chambre();
		c3.setCategorie(cat2);
		c3.setTypechambre(tc2);
		c3.setActiver(true);
		c3.setNumChambre(1);
		c3.setTelChambre(144);
		c3.setHotel(hot4);
		session.save(c3);
		
		Chambre c4 = new Chambre();
		c4.setCategorie(cat3);
		c4.setTypechambre(tc1);
		c4.setActiver(true);
		c4.setNumChambre(1);
		c4.setTelChambre(143);
		c4.setHotel(hot1);
		session.save(c4);
		
		Chambre c5 = new Chambre();
		c5.setCategorie(cat4);
		c5.setTypechambre(tc1);
		c5.setActiver(true);
		c5.setNumChambre(1);
		c5.setTelChambre(144);
		c5.setHotel(hot10);
		session.save(c5);
		
		Chambre c6 = new Chambre();
		c6.setCategorie(cat2);
		c6.setTypechambre(tc1);
		c6.setActiver(true);
		c6.setNumChambre(1);
		c6.setTelChambre(114);
		c6.setHotel(hot7);
		session.save(c6);
		
		/*saisons*/
		Saison s1=new Saison();
		s1.setDescriptionSaison("Basse saison hiver");
		//s1.setDateDebutSaison(dateDebutSaison);
		//s1.setDateFinSaison(dateFinSaison);
		session.save(s1);
		
		Saison s2=new Saison();
		s2.setDescriptionSaison("Haute saison hiver");
		//s2.setDateDebutSaison(dateDebutSaison);
		//s2.setDateFinSaison(dateFinSaison);
		session.save(s2);
		
		Saison s3=new Saison();
		s3.setDescriptionSaison("Haute saison été");
		//s3.setDateDebutSaison(dateDebutSaison);
		//s3.setDateFinSaison(dateFinSaison);
		session.save(s3);
		
		Saison s4=new Saison();
		s4.setDescriptionSaison("Vacances de la Toussaint");
		//s4.setDateDebutSaison(dateDebutSaison);
		//s4.setDateFinSaison(dateFinSaison);
		session.save(s4);
		
		Saison s5=new Saison();
		s5.setDescriptionSaison("Vacances de Printemps");
		//s5.setDateDebutSaison(dateDebutSaison);
		//s5.setDateFinSaison(dateFinSaison);
		session.save(s5);
		
		Saison s6=new Saison();
		s6.setDescriptionSaison("Vacances zone A");
		//s6.setDateDebutSaison(dateDebutSaison);
		//s6.setDateFinSaison(dateFinSaison);
		session.save(s6);
		
		Saison s7=new Saison();
		s7.setDescriptionSaison("Semaine de Noël");
		//s7.setDateDebutSaison(dateDebutSaison);
		//s7.setDateFinSaison(dateFinSaison);
		session.save(s7);
		
		Saison s8=new Saison();
		s8.setDescriptionSaison("Basse saison été");
		//s8.setDateDebutSaison(dateDebutSaison);
		//s8.setDateFinSaison(dateFinSaison);
		session.save(s8);
		
		Saison s9=new Saison();
		s9.setDescriptionSaison("Vacances zone B");
		//s9.setDateDebutSaison(dateDebutSaison);
		//s9.setDateFinSaison(dateFinSaison);
		session.save(s9);
		
		Saison s10=new Saison();
		s10.setDescriptionSaison("Vacances de Noël");
		//s9.setDateDebutSaison(dateDebutSaison);
		//s9.setDateFinSaison(dateFinSaison);
		session.save(s10);
		
		Saison s11=new Saison();
		s11.setDescriptionSaison("Moyenne saison été");
		//s9.setDateDebutSaison(dateDebutSaison);
		//s9.setDateFinSaison(dateFinSaison);
		session.save(s11);
		
		Saison s12=new Saison();
		s12.setDescriptionSaison("Vacances zone C");
		//s9.setDateDebutSaison(dateDebutSaison);
		//s9.setDateFinSaison(dateFinSaison);
		session.save(s12);
		
		
		/*offres*/
		
		Offre o1=new Offre();
		o1.setChambre(c1);
		o1.setHotel(hot1);
		o1.setPension(pens1);
		o1.setPrixOffre(80);
		o1.setSaison(s11);
		o1.setDesignationOffre("offre1");
		session.save(o1);
		
		Offre o4=new Offre();
		o4.setChambre(c3);
		o4.setHotel(hot3);
		o4.setPension(pens4);
		o4.setPrixOffre(70);
		o4.setSaison(s2);
		o1.setDesignationOffre("offre2");
		session.save(o4);
		
		Offre o2=new Offre();
		o2.setChambre(c4);
		o2.setHotel(hot1);
		o2.setPension(pens2);
		o2.setPrixOffre(120);
		o2.setSaison(s10);
		o1.setDesignationOffre("offre3");
		session.save(o2);
		
		Offre o3=new Offre();
		o3.setChambre(c1);
		o3.setHotel(hot2);
		o3.setPension(pens1);
		o3.setPrixOffre(60);
		o3.setSaison(s5);
		o1.setDesignationOffre("offre4");
		session.save(o3);
		
		
		/*reservations*/
		
		Reservation r1=new Reservation();
		List<Chambre> lc1 =new ArrayList<Chambre>();
		lc1.add(c1);
		r1.setChambres(lc1);
		r1.setNbPersonne(8);
		r1.setClient(user3);
		r1.setAgent(user1);
		r1.setArrivee(true);
		session.save(r1);
		
		Reservation r2=new Reservation();
		List<Chambre> lc2 =new ArrayList<Chambre>();
		lc2.add(c2);
		r2.setChambres(lc2);
		r2.setNbPersonne(8);
		r2.setArrivee(true);
		r1.setClient(user3);
		r1.setAgent(user1);
		session.save(r2);
		
		Reservation r3=new Reservation();
		List<Chambre> lc3 =new ArrayList<Chambre>();
		lc3.add(c3);
		r3.setChambres(lc3);
		r3.setNbPersonne(4);
		r3.setArrivee(false);
		r1.setClient(user3);
		r1.setAgent(user1);
		session.save(r3);
		
		Reservation r4=new Reservation();
		List<Chambre> lc4 =new ArrayList<Chambre>();
		lc4.add(c1);
		lc4.add(c2);
		lc4.add(c3);
		r4.setChambres(lc4);
		r4.setNbPersonne(8);
		r4.setArrivee(true);
		r4.setClient(user3);
		r4.setAgent(user1);
		session.save(r4);
		
		Reservation r5=new Reservation();
		List<Chambre> lc5 =new ArrayList<Chambre>();
		lc5.add(c5);
		r5.setChambres(lc5);
		r5.setNbPersonne(4);
		r5.setArrivee(false);
		r5.setClient(user3);
		r5.setAgent(user1);
		session.save(r5);
		
		
		
		
		
		
		
		
		
		
		
		
		/*List<Chambre> lc=new ArrayList<Chambre>();
		lc.add(c);
		cat2.setChambres(lc);
		session.save(cat2);*/
		
		
		
		
		
		
		session.getTransaction().commit();
		HibernateUtil.getSessionFactory().close();
		
	}

	/*
	 * public static void main(String[] args) {
	 * 
	 * 
	 * SessionFactory sessionFactory = null; try { sessionFactory = new
	 * Configuration().configure().buildSessionFactory(); System.err.println(
	 * "Initial SessionFactory succes "); } catch (Throwable ex) {
	 * System.err.println("Initial SessionFactory creation failed. " + ex);
	 * ex.printStackTrace(); }
	 * 
	 * Session session = sessionFactory.getCurrentSession(); // Here you are
	 * trying to access the Session which is not even created // TODO
	 * Auto-generated method stub Chambre g=new Chambre(); g.setNumChambre(45);
	 * session.persist(g); // g.setTel_chambre(477); // Categorie c=new
	 * Categorie(); // g.setCategorie(c); // g.getCategorie().getDescription();
	 * // Client c1=new Client(); // c1.getReservations().get(3).getChambres();
	 * }
	 */

}
