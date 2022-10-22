package nombredominio.modelsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.Statement;

import nombredominio.models.Pilotos;
import nombredominio.config.conexion;

public class PilotosDAO {

	conexion conexion = new conexion();

	Connection conn;
	PreparedStatement ps;
	Statement statement;
	ResultSet rs;

	Pilotos piloto = new Pilotos();
	ArrayList<Pilotos> usuarios = new ArrayList<Pilotos>();

	public Pilotos save(Pilotos piloto) {
		String sql = "INSERT INTO f1 (nombre, apellidos, nacionalidad, edad, equipo) VALUES ('" + piloto.getNombre() + "', '"
				+ piloto.getApellidos() + "','" + piloto.getNacionalidad() + "','" + piloto.getEdad() + "','" +  piloto.getEquipo() + "')";
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return piloto;
	}

	public boolean delete(int id) {
		String sql = "DELETE FROM f1 WHERE id = " + id;

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

	public Pilotos update(Pilotos piloto) {
		
		
		String sql = "";
		sql = "UPDATE f1 SET nombre = '" + piloto.getNombre() + "', apellidos = '" + piloto.getApellidos()
		+ "', nacionalidad='" + piloto.getNacionalidad() + "', edad='" + piloto.getEdad() + "', equipo='" + piloto.getEquipo() + "' WHERE id=" + piloto.getId();
		
		
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return piloto;
	}

	public Pilotos find(int id) {
		String sql = "SELECT * FROM f1 WHERE id = " + id;

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				piloto.setId(rs.getInt("id"));
				piloto.setNombre(rs.getString("nombre"));
				piloto.setApellidos(rs.getString("apellidos"));
				piloto.setNacionalidad(rs.getString("nacionalidad"));
				piloto.setEdad(rs.getInt("edad"));
				piloto.setEquipo(rs.getString("equipo"));

				return piloto;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Pilotos> all() {
		String sql = "SELECT * FROM f1";
		usuarios = new ArrayList<Pilotos>();
		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				piloto = new Pilotos();
				piloto.setId(rs.getInt("id"));
				piloto.setNombre(rs.getString("nombre"));
				piloto.setApellidos(rs.getString("apellidos"));
				piloto.setNacionalidad(rs.getString("nacionalidad"));
				piloto.setEdad(rs.getInt("edad"));
				piloto.setEquipo(rs.getString("equipo"));
				usuarios.add(piloto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usuarios;
	}

	public Pilotos getUsuario(String nombre, String apellidos) {

		String sql = "SELECT * FROM f1 WHERE nombre='" + nombre + "' AND password='" + apellidos + "'";

		try {
			conn = conexion.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				piloto.setId(rs.getInt("id"));
				piloto.setNombre(rs.getString("nombre"));
				piloto.setApellidos(rs.getString("apellidos"));
				piloto.setNacionalidad(rs.getString("nacionalidad"));
				piloto.setEdad(rs.getInt("edad"));
				piloto.setEquipo(rs.getString("equipo"));
				return piloto;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
