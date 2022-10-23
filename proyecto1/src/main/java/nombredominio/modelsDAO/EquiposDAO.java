package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.Statement;

import nombredominio.models.Equipos;
import nombredominio.config.conexion;

public class EquiposDAO {

	conexion conexion = new conexion();

	Connection conn;
	PreparedStatement ps;
	Statement statement;
	ResultSet rs;

	Equipos equipo = new Equipos();
	ArrayList<Equipos> equipos = new ArrayList<Equipos>();

	public Equipos save(Equipos equipo) {
		String sql = "INSERT INTO equipos (nombre, ano, victorias, podios, edad) VALUES ('" + equipo.getNombre() + "', '"
				+ equipo.getAno() + "','" + equipo.getVictorias() + "','" + equipo.getPodios() + "','" +  equipo.getPuntos() + "')";
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return equipo;
	}

	public boolean delete(int id) {
		String sql = "DELETE FROM equipos WHERE id = " + id;

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

	public Equipos update(Equipos equipo) {
		
		
		String sql = "";
		sql = "UPDATE equipos SET nombre = '" + equipo.getNombre() + "', ano = '" + equipo.getAno()
		+ "', victorias='" + equipo.getVictorias() + "', podios='" + equipo.getPodios() + "', puntos='" + equipo.getPuntos() + "' WHERE id=" + equipo.getId();
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return equipo;
	}

	public Equipos find(int id) {
		String sql = "SELECT * FROM equipos WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				equipo.setId(rs.getInt("id"));
				equipo.setNombre(rs.getString("nombre"));
				equipo.setAno(rs.getInt("ano"));
				equipo.setVictorias(rs.getInt("victorias"));
				equipo.setPodios(rs.getInt("podios"));
				equipo.setPuntos(rs.getInt("puntos"));
				return equipo;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Equipos> all() {
		String sql = "SELECT * FROM equipos";
		equipos = new ArrayList<Equipos>();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				equipo = new Equipos();
				equipo.setId(rs.getInt("id"));
				equipo.setNombre(rs.getString("nombre"));
				equipo.setAno(rs.getInt("ano"));
				equipo.setVictorias(rs.getInt("victorias"));
				equipo.setPodios(rs.getInt("podios"));
				equipo.setPuntos(rs.getInt("puntos"));
				equipos.add(equipo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return equipos;
	}

	public Equipos getUsuario(String email, String password) {

		String sql = "SELECT * FROM equipos WHERE email='" + email + "' AND password='" + password + "'";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				equipo.setId(rs.getInt("id"));
				equipo.setNombre(rs.getString("nombre"));
				equipo.setAno(rs.getInt("ano"));
				equipo.setVictorias(rs.getInt("victorias"));
				equipo.setPodios(rs.getInt("podios"));
				equipo.setPuntos(rs.getInt("puntos"));
				return equipo;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}