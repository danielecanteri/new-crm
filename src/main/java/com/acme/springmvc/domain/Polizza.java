package com.acme.springmvc.domain;

import java.util.Date;
import java.util.List;

public class Polizza {
	private Long id;
	private String numero;
	private String prodotto;
	private Date decorrenza;
	private List<Attivita> elencoAttivita;
	private List<Pratica> pratiche;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getProdotto() {
		return prodotto;
	}

	public void setProdotto(String prodotto) {
		this.prodotto = prodotto;
	}

	public Date getDecorrenza() {
		return decorrenza;
	}

	public void setDecorrenza(Date decorrenza) {
		this.decorrenza = decorrenza;
	}

	public List<Attivita> getElencoAttivita() {
		return elencoAttivita;
	}

	public void setElencoAttivita(List<Attivita> elencoAttivita) {
		this.elencoAttivita = elencoAttivita;
	}

	public List<Pratica> getPratiche() {
		return pratiche;
	}

	public void setPratiche(List<Pratica> pratiche) {
		this.pratiche = pratiche;
	}

}
