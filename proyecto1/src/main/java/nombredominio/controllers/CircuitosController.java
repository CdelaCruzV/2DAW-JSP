package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Circuitos;
import nombredominio.modelsDAO.CircuitosDAO;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;

/**
 * Servlet implementation class CircuitosController
 */
public class CircuitosController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String acceso; // Variable que distingue entre las vistas a las que tengo que redireccionar
	String action; // Variable que recibo por URL y que me enlaza con el metodo/vista
					// correspondiente

	Circuitos circuito;
	CircuitosDAO circuitoDAO = new CircuitosDAO();

	String nombre, pais;
	int edad, ano, longitud;

	String index = "circuitos/index.jsp";
	String create = "circuitos/create.jsp";
	String edit = "circuitos/edit.jsp";

	ArrayList<Circuitos> circuitos;

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
			circuitos = circuitoDAO.all();
			request.setAttribute("usu", circuitos);
			acceso = index;
			break;

		case "create":
			acceso = create;
			break;

		case "edit":
			// Recojo el ID por URL
			id = Integer.parseInt(request.getParameter("id"));

			// Envio ID recogido por URL
			request.setAttribute("id_circuitos", id);

			request.setAttribute("usu", circuitoDAO.find(id));

			acceso = edit;
			break;

		case "delete":
			id = Integer.parseInt(request.getParameter("id"));
			circuitoDAO.delete(id);

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
			pais = request.getParameter("pais");
			ano = Integer.parseInt(request.getParameter("ano"));
			longitud = Integer.parseInt(request.getParameter("longitud"));

			circuito = new Circuitos();
			circuito.setNombre(nombre);
			circuito.setPais(pais);
			circuito.setAno(ano);
			circuito.setLongitud(longitud);

			circuitoDAO.save(circuito);
			acceso = index;

			break;

		case "update":
			id = Integer.parseInt(request.getParameter("id"));
			nombre = request.getParameter("nombre");
			pais = request.getParameter("pais");
			ano = Integer.parseInt(request.getParameter("ano"));
			longitud = Integer.parseInt(request.getParameter("longitud"));

			circuito = new Circuitos();
			circuito.setId(id);
			circuito.setNombre(nombre);
			circuito.setPais(pais);
			circuito.setAno(ano);
			circuito.setLongitud(longitud);

			circuitoDAO.update(circuito);

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
