<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@ page import="nombredominio.models.Usuario"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="../login-validation.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="daw"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,scale-user=no,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
<title>Lista de Usuarios</title>
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
					<li><a href="CircuitosController?action=index">Circuitos</a></li>
					<li><a href="UsuariosController?action=index" class="active">Usuarios</a></li>
					<li><a href="AuthController?action=login">Login / Register</a></li>
				</ul>
			</nav>
		</div>

		<div id="izquierda">
			<h1>Lista de Usuarios</h1>
			<a href="UsuariosController?action=create" style="margin-left: 90%;">Añadir
				Usuario</a>
			<table>
				<div class="row">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nombre</th>
									<th scope="col">Email</th>
									<th scope="col">Password</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody class="table-group-divider">

								<daw:forEach var="usuario" items="${usu}">
									<daw:if test="${usuario.id == 1}">
										<h1>HOLA ${usuario.nombre}</h1>
									</daw:if>
									<tr>
										<td>${usuario.id}</td>
										<td>${usuario.nombre}</td>
										<td>${usuario.email}</td>
										<td>${usuario.password}</td>
										<td><a
											href="UsuariosController?action=edit&id=${usuario.id}">Edit</a>
											<a href="UsuariosController?action=delete&id=${usuario.id}">Delete</a>
										</td>
									</tr>
								</daw:forEach>

								<daw:choose>

									<daw:when test="${usuario.id == 5}">
										<h1>HOLA ${usuario.nombre}</h1>
									</daw:when>

									<daw:when test="${usuario.id == 6}">
										<h1>HOLA ${usuario.nombre}</h1>
									</daw:when>

									<daw:otherwise>
									</daw:otherwise>

								</daw:choose>

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
