package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Pilotos;
import nombredominio.modelsDAO.PilotosDAO;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;

/**
 * Servlet implementation class UsuariosController
 */
public class PilotosController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String acceso; // Variable que distingue entre las vistas a las que tengo que redireccionar
	String action; // Variable que recibo por URL y que me enlaza con el metodo/vista
					// correspondiente

	Pilotos piloto;
	PilotosDAO pilotoDAO = new PilotosDAO();

	String nombre, apellidos, nacionalidad, equipo;
	int edad;

	String index = "pilotos/index.jsp";
	String create = "pilotos/create.jsp";
	String edit = "pilotos/edit.jsp";

	ArrayList<Pilotos> pilotos;

	int id;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action"); // valor que recojo por url

		switch (action) {
		case "index":
			pilotos = pilotoDAO.all();
			request.setAttribute("usu", pilotos);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;

		case "edit":
			// Recojo el ID por URL
			id = Integer.parseInt(request.getParameter("id"));

			// Envio ID recogido por URL
			request.setAttribute("id_usuario", id);

			request.setAttribute("usu", pilotoDAO.find(id));

			acceso = edit;
			break;

		case "delete":
			id = Integer.parseInt(request.getParameter("id"));
			pilotoDAO.delete(id);

			acceso = index;
			break;

		default:

			break;
		}

		// Lanzar la vista en funcion del action recibido
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		acceso = "";
		action = request.getParameter("action"); // valor que recojo por url

		switch (action) {
		case "create":
			nombre = request.getParameter("nombre");
			apellidos = request.getParameter("apellidos");
			nacionalidad = request.getParameter("nacionalidad");
			edad = Integer.parseInt(request.getParameter("edad"));
			equipo = request.getParameter("equipo");

			piloto = new Pilotos();
			piloto.setNombre(nombre);
			piloto.setApellidos(apellidos);
			piloto.setNacionalidad(nacionalidad);
			piloto.setEdad(edad);
			piloto.setEquipo(equipo);

			pilotoDAO.save(piloto);
			acceso = index;

			break;

		case "update":
			id = Integer.parseInt(request.getParameter("id"));
			nombre = request.getParameter("nombre");
			apellidos = request.getParameter("apellidos");
			nacionalidad = request.getParameter("nacionalidad");
			edad = Integer.parseInt(request.getParameter("edad"));
			equipo = request.getParameter("equipo");

			piloto = new Pilotos();
			piloto.setId(id);
			piloto.setNombre(nombre);
			piloto.setApellidos(apellidos);
			piloto.setNacionalidad(nacionalidad);
			piloto.setEdad(edad);
			piloto.setEquipo(equipo);

			pilotoDAO.update(piloto);

			acceso = index;
			break;

		default:

			break;
		}

		// Lanzar la vista en funcion del action recibido
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

}
