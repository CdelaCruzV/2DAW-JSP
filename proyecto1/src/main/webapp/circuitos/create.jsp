<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="nombredominio.modelsDAO.CircuitosDAO" %>
	<%@ page import="nombredominio.models.Circuitos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>A�adir Circuitos</title>
	</head>
	<body>
	<h1>A�ade un Circuito</h1>
		<form method="POST" action="CircuitosController?action=create">
        	
        	<input type="hidden" name="id">
        	<p>Nombre:</p>
        	<input type="text" name="nombre">
        	<br>
        	<p>Pa�s:</p>
        	<input type="text" name="pais">
        	<br>
        	<p>A�o:</p>
        	<input type="text" name="ano">
        	<br>
        	<p>Longitud:</p>
        	<input type="text" name="longitud"> m
        	<br>
        	
        	<button type="submit">Enviar</button>
        </form>
	</body>
</html>