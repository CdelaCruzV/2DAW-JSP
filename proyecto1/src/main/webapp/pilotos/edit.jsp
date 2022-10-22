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
	</head>
	<body>
	<h1>Edita un Piloto</h1>
		<%
			PilotosDAO pilotoDAO = new PilotosDAO();
			int id = Integer.parseInt(request.getAttribute("id_usuario").toString());
			Pilotos piloto = new Pilotos();
			piloto = pilotoDAO.find(id);
		%>

        <form method="POST" action="PilotosController?action=update">
        	
        	<input type="hidden" name="id" value="<%= piloto.getId() %>">
        	<p>Nombre:</p>
        	<input type="text" name="nombre" value="<%= piloto.getNombre() %>">
        	<br>
        	<p>Apellidos:</p>
        	<input type="text" name="apellidos" value="<%= piloto.getNombre() %>">
        	<br>
        	<p>Nacionalidad:</p>
        	<input type="text" name="nacionalidad" value="<%= piloto.getNombre() %>">
        	<br>
        	<p>Edad:</p>
        	<input type="text" name="edad" value="<%= piloto.getNombre() %>">
        	<br>
        	<p>Equipo:</p>
        	<input type="text" name="equipo" value="<%= piloto.getNombre() %>">
        	<br>
        	
        	<button type="submit">Actualizar</button>
        </form>
	</body>
</html>