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
	</head>
	<body>
	<h1>Añade un Piloto</h1>
		<form method="POST" action="PilotosController?action=create">
        	
        	<input type="hidden" name="id">
        	<p>Nombre:</p>
        	<input type="text" name="nombre">
        	<br>
        	<p>Apellidos:</p>
        	<input type="text" name="apellidos">
        	<br>
        	<p>Nacionalidad:</p>
        	<input type="text" name="nacionalidad">
        	<br>
        	<p>Edad:</p>
        	<input type="text" name="edad">
        	<br>
        	<p>Equipo:</p>
        	<input type="text" name="equipo">
        	<br>
        	
        	<button type="submit">Enviar</button>
        </form>
	</body>
</html>