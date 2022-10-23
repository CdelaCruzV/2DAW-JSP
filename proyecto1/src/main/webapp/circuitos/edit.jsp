<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="nombredominio.modelsDAO.CircuitosDAO" %>
	<%@ page import="nombredominio.models.Circuitos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Editar un Circuito</title>
	</head>
	<body>
	<h1>Edita un Circuito</h1>
		<%
			CircuitosDAO circuitoDAO = new CircuitosDAO();
			int id = Integer.parseInt(request.getAttribute("id_circuitos").toString());
			Circuitos circuito = new Circuitos();
			circuito = circuitoDAO.find(id);
		%>

        <form method="POST" action="CircuitosController?action=update">
        	
        	<input type="hidden" name="id" value="<%= circuito.getId() %>">
        	<p>Nombre:</p>
        	<input type="text" name="nombre" value="<%= circuito.getNombre() %>">
        	<br>
        	<p>País:</p>
        	<input type="text" name="pais" value="<%= circuito.getPais() %>">
        	<br>
        	<p>Año:</p>
        	<input type="text" name="ano" value="<%= circuito.getAno() %>">
        	<br>
        	<p>Longitud:</p>
        	<input type="text" name="longitud" value="<%= circuito.getLongitud() %>"> m
        	<br>
        	
        	<button type="submit">Actualizar</button>
        </form>
	</body>
</html>