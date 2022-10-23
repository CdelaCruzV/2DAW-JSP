<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="nombredominio.modelsDAO.EquiposDAO" %>
	<%@ page import="nombredominio.models.Equipos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Editar un Equipo</title>
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
	</head>
	<body style="background-image: url(./resources/img/f1e.jpg);">
	<h1>Edita un Equipo</h1>
		<%
			EquiposDAO equipoDAO = new EquiposDAO();
			int id = Integer.parseInt(request.getAttribute("id_usuario").toString());
			Equipos equipo = new Equipos();
			equipo = equipoDAO.find(id);
		%>

        <p class="texto">Edita un Equipo</p>
		<div class="Login">
		<form method="POST" action="EquiposController?action=update">

			<span class="fontawesome-envelope"></span><input type="text"
				name="id"  placeholder="id" value="<%= equipo.getId() %>" readonly> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= equipo.getNombre() %>" name="nombre" placeholder="Nombre" > 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="ano" value="<%= equipo.getAno() %>" placeholder="Año"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= equipo.getVictorias() %>" name="victorias" placeholder="Victorias"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= equipo.getPodios() %>" name="podios" placeholder="Podios"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= equipo.getPuntos() %>" name="puntos" placeholder="Puntos"> 
				
				<input
				type="submit" value="Editar" title="Editar Equipo"> <br>
				</form>
		</div>

        
	</body>
</html>