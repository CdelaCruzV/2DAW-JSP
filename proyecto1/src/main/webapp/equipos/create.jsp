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
	</head>
	<body>
	<h1>Añade un Equipo</h1>
		<form method="POST" action="EquiposController?action=create">
        	
        	<input type="hidden" name="id">
        	<p>Nombre:</p>
        	<input type="text" name="nombre">
        	<br>
        	<p>Año:</p>
        	<input type="text" name="ano">
        	<br>
        	<p>Victorias:</p>
        	<input type="text" name="victorias">
        	<br>
        	<p>Podios:</p>
        	<input type="text" name="podios">
        	<br>
        	<p>Puntos:</p>
        	<input type="text" name="puntos">
        	<br>
        	
        	<button type="submit">Enviar</button>
        </form>
	</body>
</html>