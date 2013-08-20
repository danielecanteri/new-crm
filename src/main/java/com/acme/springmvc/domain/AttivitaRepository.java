package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class AttivitaRepository {

	public List<Attivita> list() {
		List<Attivita> result = new ArrayList<Attivita>();
		for (int i = 0; i < 10; i++) {
			Attivita attivita = new Attivita();
			attivita.setDescrizione("descrizione " + i);
			attivita.setCreata(new Date());
			attivita.setStato("new");
			result.add(attivita);
		}
		return result;
	}

}
