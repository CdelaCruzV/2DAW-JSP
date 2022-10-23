package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.Statement;

import nombredominio.models.Circuitos;
import nombredominio.config.conexion;

public class CircuitosDAO {

	conexion conexion = new conexion();

	Connection conn;
	PreparedStatement ps;
	Statement statement;
	ResultSet rs;

	Circuitos circuito = new Circuitos();
	ArrayList<Circuitos> circuitos = new ArrayList<Circuitos>();

	public Circuitos save(Circuitos circuito) {
		String sql = "INSERT INTO circuitos (nombre, pais, ano, longitud) VALUES ('" + circuito.getNombre() + "', '"
				+ circuito.getPais() +  "','" + circuito.getAno() + "','" +  circuito.getLongitud() + "')";
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return circuito;
	}

	public boolean delete(int id) {
		String sql = "DELETE FROM circuitos WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			statement = conn.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
	}

	public Circuitos update(Circuitos circuito) {
		
		
		String sql = "";
		sql = "UPDATE circuitos SET nombre = '" + circuito.getNombre() + "', pais = '" + circuito.getPais()
		+  "', ano='" + circuito.getAno() + "', longitud='" + circuito.getLongitud() + "' WHERE id=" + circuito.getId();
		
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return circuito;
	}

	public Circuitos find(int id) {
		String sql = "SELECT * FROM circuitos WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				circuito.setId(rs.getInt("id"));
				circuito.setNombre(rs.getString("nombre"));
				circuito.setPais(rs.getString("pais"));
				circuito.setAno(rs.getInt("ano"));
				circuito.setLongitud(rs.getInt("longitud"));
				
				return circuito;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Circuitos> all() {
		String sql = "SELECT * FROM circuitos";
		circuitos = new ArrayList<Circuitos>();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				circuito = new Circuitos();
				circuito.setId(rs.getInt("id"));
				circuito.setNombre(rs.getString("nombre"));
				circuito.setPais(rs.getString("pais"));
				circuito.setAno(rs.getInt("ano"));
				circuito.setLongitud(rs.getInt("longitud"));
				circuitos.add(circuito);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return circuitos;
	}

	public Circuitos getUsuario(String nombre, String pais) {

		String sql = "SELECT * FROM circuitos WHERE nombre='" + nombre + "' AND password='" + pais + "'";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				circuito.setId(rs.getInt("id"));
				circuito.setNombre(rs.getString("nombre"));
				circuito.setPais(rs.getString("pais"));
				circuito.setAno(rs.getInt("ano"));
				circuito.setLongitud(rs.getInt("longitud"));
				return circuito;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
