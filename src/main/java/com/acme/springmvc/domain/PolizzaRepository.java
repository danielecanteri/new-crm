package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class PolizzaRepository {

	public Polizza dettaglio(Long id) {
		Polizza polizza = new Polizza();
		polizza.setId(id);
		polizza.setDecorrenza(DateTime.now().minusMonths(id.intValue())
				.toDate());
		polizza.setNumero(id + "" + id + "" + id);
		polizza.setProdotto("Prodotto " + id);
		polizza.setElencoAttivita(elencoAttivita());
		polizza.setPratiche(pratiche());
		return polizza;
	}

	private List<Pratica> pratiche() {
		List<Pratica> result = new ArrayList<Pratica>();
		for (int i = 0; i < 6; i++) {
			Pratica pratica = new Pratica();
			pratica.setId(new Long(i));
			pratica.setDescrizione("descrizione");
			pratica.setStato("chiusa");
			pratica.setApertura(DateTime.now().minusDays(i).toDate());
			result.add(pratica);
		}
		return result;
	}

	private List<Attivita> elencoAttivita() {
		List<Attivita> result = new ArrayList<Attivita>();
		for (int i = 0; i < 10; i++) {
			Attivita attivita = new Attivita();
			attivita.setId(new Long(i));
			attivita.setCommenti("blah blah blah");
			attivita.setDescrizione("descrizione");
			attivita.setCreata(DateTime.now().minusWeeks(i).toDate());
			attivita.setStato("chiusa");
			result.add(attivita);
		}
		return result;
	}
}
