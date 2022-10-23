<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="nombredominio.modelsDAO.UsuarioDAO" %>
<%@ page import="nombredominio.models.Usuario" %>
<%@ include file = "../login-validation.jsp" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>USUARIOS | EDIT </title>
		<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
	</head>
	<body style="background-image: url(./resources/img/f1e.jpg);">
		<h1>USUARIOS EDIT</h1>
		<%
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			int id = Integer.parseInt(request.getAttribute("id_usuario").toString());
			Usuario usuario = new Usuario();
			usuario = usuarioDAO.find(id);
		%>
	
	<p class="texto">Edita un Usuario</p>
		<div class="Login">
		<form method="POST" action="UsuariosController?action=update">

			<span class="fontawesome-envelope"></span><input type="text"
				name="id"  placeholder="id" value="<%= usuario.getId() %>" readonly> 
				
				<span
				class="fontawesome-lock"></span><input type="text" value="<%= usuario.getNombre() %>" name="nombre" placeholder="Nombre" > 
				
				<span
				class="fontawesome-lock"></span><input type="email" value="<%= usuario.getEmail() %>" name="email" placeholder="Correo"> 
				
				<span
				class="fontawesome-lock"></span><input type="password" value="<%= usuario.getPassword() %>" name="password" placeholder="contraseña"> 
				
				<input type="submit" value="Editar" title="Editar Piloto"> <br>
				</form>
		</div>

        
        

	</body>
</html>