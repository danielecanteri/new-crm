package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class BancarioRepository {

	private List<Bancario> list = new ArrayList<Bancario>();

	public BancarioRepository() {
		list.add(newBancario(1L, "Mario", "Rossi", "BPER", "Verona"));
		list.add(newBancario(2L, "Mario", "Verdi", "BPSO", "Milano"));
		list.add(newBancario(3L, "Luigi", "Rossi", "BPER", "Padova"));
		list.add(newBancario(4L, "Mario", "Bianchi", "BPER", "Verona"));
		list.add(newBancario(5L, "Mario", "Rossi", "BPSO", "Milano"));
		list.add(newBancario(6L, "Paolo", "Rossi", "BPER", "Verona"));
	}

	public List<Bancario> search(String nomeCognome) {
		return list;
	}

	private Bancario newBancario(Long id, String nome, String cognome,
			String banca, String filiale) {
		Bancario bancario = new Bancario();
		bancario.setId(id);
		bancario.setNome(nome);
		bancario.setCognome(cognome);
		bancario.setBanca(banca);
		bancario.setFiliale(filiale);
		return bancario;
	}

	public Bancario save(Bancario bancario) {
		bancario.setId(list.size() + 1L);
		bancario.setCreated(DateTime.now().toDate());
		bancario.setUpdated(DateTime.now().toDate());

		list.add(bancario);

		return bancario;
	}
}
