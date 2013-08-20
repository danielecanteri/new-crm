package com.acme.springmvc.domain;

import java.util.Date;

public class Attivita {

	private Long id;
	private String descrizione;
	private String commenti;
	private Date creata;
	private String stato;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getCommenti() {
		return commenti;
	}

	public void setCommenti(String commenti) {
		this.commenti = commenti;
	}

	public Date getCreata() {
		return creata;
	}

	public void setCreata(Date creata) {
		this.creata = creata;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

}
