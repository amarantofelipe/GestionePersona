package model;

public class Persona {
	
	//ATTRIBUTE
	String nome;
	String cognome;
	int eta;
	int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//SETTER E GETTER
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public int getEta() {
		return eta;
	}
	public void setEta(int eta) {
		this.eta = eta;
	}
	public Persona(String nome, String cognome, int eta, int id) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
		this.id = id;
	}
	
	public Persona(String nome, String cognome, int eta) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
	}
	
}
