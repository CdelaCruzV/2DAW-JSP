<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="nombredominio.modelsDAO.PilotosDAO" %>
	<%@ page import="nombredominio.models.Pilotos" %>
	<%@ include file = "../login-validation.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Editar un Piloto</title>
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
	</head>
	<body style="background-image: url(./resources/img/f1e.jpg);">
		<%
			PilotosDAO pilotoDAO = new PilotosDAO();
			int id = Integer.parseInt(request.getAttribute("id_pilotos").toString());
			Pilotos piloto = new Pilotos();
			piloto = pilotoDAO.find(id);
		%>
		<p class="texto">Edita un Piloto</p>
		<div class="Login">
		<form method="POST" action="PilotosController?action=update">

			<span class="fontawesome-envelope"></span><input type="text"
				name="id"  placeholder="id" value="<%= piloto.getId() %>" readonly> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= piloto.getNombre() %>" name="nombre" placeholder="Nombre" > 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= piloto.getApellidos() %>" name="apellidos" placeholder="Apellidos"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= piloto.getNacionalidad() %>" name="nacionalidad" placeholder="Nacionalidad"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= piloto.getEdad() %>" name="edad" placeholder="Edad"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= piloto.getEquipo() %>" name="equipo" placeholder="Equipo"> 
				
				<input
				type="submit" value="Editar" title="Editar Piloto"> <br>
				</form>
		</div>

        
	</body>
</html>