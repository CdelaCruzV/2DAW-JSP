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
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
	</head>
	<body style="background-image: url(./resources/img/f1e.jpg);">
	<h1>Edita un Circuito</h1>
		<%
			CircuitosDAO circuitoDAO = new CircuitosDAO();
			int id = Integer.parseInt(request.getAttribute("id_circuitos").toString());
			Circuitos circuito = new Circuitos();
			circuito = circuitoDAO.find(id);
		%>

        	<p class="texto">Edita un Circuito</p>
		<div class="Login">
		<form method="POST" action="CircuitosController?action=update">

			<span class="fontawesome-envelope"></span><input type="text"
				name="id"  placeholder="id" value="<%= circuito.getId() %>" readonly> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= circuito.getNombre() %>" name="nombre" placeholder="Nombre" > 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= circuito.getPais() %>" name="pais" placeholder="País"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= circuito.getAno() %>" name="ano" placeholder="Año"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= circuito.getLongitud() %>" name="longitud" placeholder="Longitud"> 
				
				<input
				type="submit" value="Editar" title="Editar Circuito"> <br>
				</form>
		</div>

        
	</body>
</html>