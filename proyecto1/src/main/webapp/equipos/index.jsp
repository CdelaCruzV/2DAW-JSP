	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ page import="nombredominio.modelsDAO.EquiposDAO"%>
	<%@ page import="nombredominio.models.Equipos"%>
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
					<li><a href="PilotosController?action=index">Pilotos</a></li>
					<li><a href="EquiposController?action=index" class="active">Equipos</a></li>
					<li><a href="CircuitosController?action=index">Circuitos</a></li>
					<li><a href="UsuariosController?action=index">Usuarios</a></li>
					<li><a href="AuthController?action=login">Login / Register</a></li>
				</ul>
			</nav>
		</div>

		<div id="izquierda">
			<h1>Lista de Equipos</h1>
			<a href="EquiposController?action=create" style=" margin-left: 90%;">Añadir Equipo</a>
			<table>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">Año</th>
			                        <th scope="col">Victorias</th>
			                        <th scope="col">Podios</th>
			                        <th scope="col">Puntos</th>
			                        <th scope="col"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">

								<daw:forEach var="equipo" items="${usu}">
			                    	<tr>
			                        <td>${equipo.id}</td>
			                        <td>${equipo.nombre}</td>
			                        <td>${equipo.ano}</td>
			                        <td>${equipo.victorias}</td>
			                        <td>${equipo.podios}</td>
			                        <td>${equipo.puntos}</td>
			                        <td>
				                        <a href="EquiposController?action=edit&id=${equipo.id}">Edit</a>
				                        <a href="EquiposController?action=delete&id=${equipo.id}">Delete</a>
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