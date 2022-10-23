<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nombredominio.modelsDAO.UsuarioDAO"%>
<%@ page import="nombredominio.models.Usuario"%>
<%@ include file="../login-validation.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USUARIOS | CREATE</title>
<link href="./resources/css/styleform.css" type="text/css" rel="stylesheet">
</head>
</head>
<body style="background-image: url(./resources/img/f1e.jpg);">
	<p class="texto">Registro</p>
	<div class="Login">
		<form method="POST" action="UsuariosController?action=create">
		
		<span class="fontawesome-envelope-alt"></span><input type="text"
				name="nombre" id="nombre" required placeholder="Nombre"> 

			<span class="fontawesome-envelope-alt"></span><input type="email"
				name="email" id="email" required placeholder="Correo"> 
				<span
				class="fontawesome-lock"></span>
				<input type="password"
				name="password" required placeholder="Contraseña"> 
				
				<input
				type="submit" value="Registro" title="Registra tu cuenta">
			</form>
			</div>
</body>
</html>