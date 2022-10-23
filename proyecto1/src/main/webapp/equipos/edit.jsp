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
	</head>
	<body>
	<h1>Edita un Equipo</h1>
		<%
			EquiposDAO equipoDAO = new EquiposDAO();
			int id = Integer.parseInt(request.getAttribute("id_usuario").toString());
			Equipos equipo = new Equipos();
			equipo = equipoDAO.find(id);
		%>

        <form method="POST" action="EquiposController?action=update">
        	
        	<input type="hidden" name="id" value="<%= equipo.getId() %>">
        	<p>Nombre:</p>
        	<input type="text" name="nombre" value="<%= equipo.getNombre() %>">
        	<br>
        	<p>Año:</p>
        	<input type="text" name="ano" value="<%= equipo.getAno() %>">
        	<br>
        	<p>Victorias:</p>
        	<input type="text" name="victorias" value="<%= equipo.getVictorias() %>">
        	<br>
        	<p>Podios:</p>
        	<input type="text" name="podios" value="<%= equipo.getPodios() %>">
        	<br>
        	<p>Puntos:</p>
        	<input type="text" name="puntos" value="<%= equipo.getPuntos() %>">
        	<br>
        	
        	<button type="submit">Actualizar</button>
        </form>
	</body>
</html>