<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="nombredominio.modelsDAO.PilotosDAO" %>
	<%@ page import="nombredominio.models.Pilotos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Añadir Pilotos</title>
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
</head>
<body style="background-image: url(./resources/img/f1e.jpg);">
	<p class="texto">Añadir Pilotos</p>
	<div class="Login">
		<form method="POST" action="PilotosController?action=create">

			<span class="fontawesome-envelope-alt"></span><input type="hidden"
				name="id"  placeholder="id"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="nombre" placeholder="Nombre"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="apellidos" placeholder="Apellidos"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="nacionalidad" placeholder="Nacionalidad"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="edad" placeholder="Edad"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="equipo" placeholder="Equipo"> 
				
				<input
				type="submit" value="Añadir" title="Añadir Pilotos"> <br>
				</form>
	</div>
	</body>
</html>