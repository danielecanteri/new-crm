package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.format.datetime.joda.DateTimeFormatterFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ClienteRepository {

	private List<Cliente> list;

	public List<Cliente> search(String nomeCognome) {
		list = new ArrayList<Cliente>();
		list.add(newCliente(1L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"22/09/1980"));
		list.add(newCliente(2L, "Mario", "Verdi", "MRSMSS88M33L483H",
				"03/10/1970"));
		list.add(newCliente(3L, "Luigi", "Rossi", "LGUMSS88M33L483H",
				"15/11/1968"));
		list.add(newCliente(4L, "Mario", "Bianchi", "MROMSS88M33L483H",
				"21/02/1982"));
		list.add(newCliente(5L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"07/06/1983"));
		list.add(newCliente(6L, "Luigi", "Rossi", "LGUMSS88M33L483H",
				"15/11/1968"));
		list.add(newCliente(7L, "Mario", "Bianchi", "MROMSS88M33L483H",
				"21/02/1982"));
		list.add(newCliente(8L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"07/06/1983"));
		list.add(newCliente(9L, "Paolo", "Rossi", "PLOMSS88M33L483H",
				"28/05/1960"));
		return list;
	}

	private Cliente newCliente(Long id, String nome, String cognome,
			String codiceFiscale, String dataNascita) {
		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setNome(nome);
		cliente.setCognome(cognome);
		cliente.setCodiceFiscale(codiceFiscale);
		cliente.setDataNascita(DateTime.parse(
				dataNascita,
				new DateTimeFormatterFactory("dd/MM/yyyy")
						.createDateTimeFormatter()).toDate());
		cliente.setPolizze(newPolizze());
		return cliente;
	}

	private List<Polizza> newPolizze() {
		List<Polizza> list = new ArrayList<Polizza>();
		for (int i = 1; i < 9; i++) {
			Polizza polizza = new Polizza();
			polizza.setId((long) i);
			polizza.setNumero(i + "" + i + "" + i);
			polizza.setProdotto("PRODOTTO " + i);
			polizza.setDecorrenza(DateTime.now().minusYears(i).toDate());
			list.add(polizza);
		}
		return list;
	}

	public Cliente dettaglio(Long id) {
		for (Cliente cliente : list) {
			if (cliente.getId().equals(id))
				return cliente;
		}
		return null;
	}
}
