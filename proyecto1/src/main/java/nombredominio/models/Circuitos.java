package nombredominio.models;

public class Circuitos {
	
	int id;
	String nombre;
	String pais;
	int ano;
	int longitud;
	
	public Circuitos(int id, String nombre, String pais, int ano, int longitud) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.pais = pais;
		this.ano = ano;
		this.longitud = longitud;
	}
	
	public Circuitos () {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public int getLongitud() {
		return longitud;
	}

	public void setLongitud(int longitud) {
		this.longitud = longitud;
	}
	
	
	
}
