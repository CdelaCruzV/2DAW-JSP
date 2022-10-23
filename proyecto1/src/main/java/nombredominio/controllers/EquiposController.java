package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Equipos;
import nombredominio.modelsDAO.EquiposDAO;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;

/**
 * Servlet implementation class EquiposController
 */
public class EquiposController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String acceso; // Variable que distingue entre las vistas a las que tengo que redireccionar
	String action; // Variable que recibo por URL y que me enlaza con el metodo/vista
					// correspondiente

	Equipos equipo;
	EquiposDAO equipoDAO = new EquiposDAO();

	String nombre;
	int edad, ano, victorias, podios, puntos;

	String index = "equipos/index.jsp";
	String create = "equipos/create.jsp";
	String edit = "equipos/edit.jsp";

	ArrayList<Equipos> equipos;

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
			equipos = equipoDAO.all();
			request.setAttribute("usu", equipos);
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

			request.setAttribute("usu", equipoDAO.find(id));

			acceso = edit;
			break;

		case "delete":
			id = Integer.parseInt(request.getParameter("id"));
			equipoDAO.delete(id);

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
			ano = Integer.parseInt(request.getParameter("ano"));
			victorias = Integer.parseInt(request.getParameter("victorias"));
			podios = Integer.parseInt(request.getParameter("podios"));
			puntos = Integer.parseInt(request.getParameter("puntos"));

			equipo = new Equipos();
			equipo.setNombre(nombre);
			equipo.setAno(ano);
			equipo.setVictorias(victorias);
			equipo.setPodios(podios);
			equipo.setPuntos(puntos);

			equipoDAO.save(equipo);
			acceso = index;

			break;

		case "update":
			id = Integer.parseInt(request.getParameter("id"));
			nombre = request.getParameter("nombre");
			ano = Integer.parseInt(request.getParameter("ano"));
			victorias = Integer.parseInt(request.getParameter("victorias"));
			podios = Integer.parseInt(request.getParameter("podios"));
			puntos = Integer.parseInt(request.getParameter("puntos"));

			equipo = new Equipos();
			equipo.setId(id);
			equipo.setNombre(nombre);
			equipo.setAno(ano);
			equipo.setVictorias(victorias);
			equipo.setPodios(podios);
			equipo.setPuntos(puntos);

			equipoDAO.update(equipo);

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
