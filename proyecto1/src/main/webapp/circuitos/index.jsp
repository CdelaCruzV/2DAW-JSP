	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ page import="nombredominio.modelsDAO.CircuitosDAO"%>
	<%@ page import="nombredominio.models.Circuitos"%>
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
					<li><a href="EquiposController?action=index">Equipos</a></li>
					<li><a href="CircuitosController?action=index" class="active">Circuitos</a></li>
					<li><a href="UsuariosController?action=index">Usuarios</a></li>
					<li><a href="AuthController?action=login">Login / Register</a></li>
				</ul>
			</nav>
		</div>

		<div id="izquierda">
			<h1>Lista de Circuitos</h1>
			<a href="CircuitosController?action=create" style=" margin-left: 88%;">Añadir Circuitos</a>
			<table>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">País</th>
			                        <th scope="col">Año</th>
			                        <th scope="col">Longitud</th>
			                        <th scope="col"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">

								<daw:forEach var="circuito" items="${usu}">
			                    	<tr>
			                        <td>${circuito.id}</td>
			                        <td>${circuito.nombre}</td>
			                        <td>${circuito.pais}</td>
			                        <td>${circuito.ano}</td>
			                        <td>${circuito.longitud} m</td>
			                        <td>
				                        <a href="CircuitosController?action=edit&id=${circuito.id}">Edit</a>
				                        <a href="CircuitosController?action=delete&id=${circuito.id}">Delete</a>
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