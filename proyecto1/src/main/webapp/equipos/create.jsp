<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="nombredominio.modelsDAO.EquiposDAO" %>
	<%@ page import="nombredominio.models.Equipos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Añadir Equipos</title>
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
</head>
<body style="background-image: url(./resources/img/f1e.jpg);">
	<p class="texto">Añadir Equipos</p>
	<div class="Login">
		<form method="POST" action="EquiposController?action=create">

			<span class="fontawesome-envelope-alt"></span><input type="hidden"
				name="id" placeholder="id"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="nombre" placeholder="Nombre"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="ano" placeholder="Año"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="victorias" placeholder="Victorias"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="podios" placeholder="Podios"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="puntos" placeholder="Puntos"> 
				
				<input
				type="submit" value="Añadir" title="Añadir Equipos"> <br>
	</div>
	</body>
</html>