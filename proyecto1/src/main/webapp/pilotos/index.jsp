
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="nombredominio.modelsDAO.PilotosDAO"%>
<%@ page import="nombredominio.models.Pilotos"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="daw"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="./resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="contenedor">
		<div id="cabecera">
			<nav id="menu">
				<ul>
					<li><a href="home.jsp">Home</a></li>
					<li><a href="PilotosController?action=index" class="active">Pilotos</a></li>
					<li><a href="EquiposController?action=index">Equipos</a></li>
					<li><a href="CircuitosController?action=index">Circuitos</a></li>
					<li><a href="UsuariosController?action=index">Usuarios</a></li>
					<li><a href="AuthController?action=login">Login / Register</a></li>
				</ul>
			</nav>
		</div>

		<div id="izquierda">
			<h1>Lista de Pilotos</h1>
			<a href="PilotosController?action=create" style="margin-left: 90%;">Añadir
				Piloto</a>
			<table>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nombre</th>
									<th scope="col">Apellidos</th>
									<th scope="col">Nacionalidad</th>
									<th scope="col">Edad</th>
									<th scope="col">Equipo</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">

								<daw:forEach var="piloto" items="${usu}">
									<tr>
										<td>${piloto.id}</td>
										<td>${piloto.nombre}</td>
										<td>${piloto.apellidos}</td>
										<td>${piloto.nacionalidad}</td>
										<td>${piloto.edad}</td>
										<td>${piloto.equipo}</td>
										<td><a
											href="PilotosController?action=edit&id=${piloto.id}">Edit</a>
											<a href="PilotosController?action=delete&id=${piloto.id}">Delete</a>
										</td>
									</tr>
								</daw:forEach>

							</tbody>
						</table>
					</div>
					<div class="col-lg-4"></div>
				</div>
			</table>
		</div>
		<div id="despedida">
			<footer>
				<p>&copy; Pie de página</p>
			</footer>
		</div>
	</div>

</body>
</html>