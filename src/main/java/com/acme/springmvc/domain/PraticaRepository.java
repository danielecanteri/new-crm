package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class PraticaRepository {

	public List<Pratica> list() {
		List<Pratica> result = new ArrayList<Pratica>();
		for (int i = 0; i < 10; i++) {
			Pratica pratica = new Pratica();
			pratica.setId(new Long(i));
			pratica.setDescrizione("descrizione " + i);
			pratica.setStato("new");
			result.add(pratica);
		}
		return result;
	}

}
