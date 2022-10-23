package nombredominio.models;

public class Equipos {
	
	int id, ano, victorias, podios, puntos;
	String nombre;
	
	public Equipos(int id, int ano, int victorias, int podios, int puntos, String nombre) {
		super();
		this.id = id;
		this.ano = ano;
		this.victorias = victorias;
		this.podios = podios;
		this.puntos = puntos;
		this.nombre = nombre;
	}
	
	public Equipos() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public int getVictorias() {
		return victorias;
	}

	public void setVictorias(int victorias) {
		this.victorias = victorias;
	}

	public int getPodios() {
		return podios;
	}

	public void setPodios(int podios) {
		this.podios = podios;
	}

	public int getPuntos() {
		return puntos;
	}

	public void setPuntos(int puntos) {
		this.puntos = puntos;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
