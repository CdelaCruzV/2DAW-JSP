<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./resources/css/styleform.css" type="text/css" rel="stylesheet">
</head>
<body style="background-image: url(./resources/img/f1e.jpg);">
	<p class="texto">Login</p>
	<div class="Login">
		<form method="POST" action="AuthController?action=login">

			<span class="fontawesome-envelope-alt"></span><input type="email"
				name="email" id="email" required placeholder="Correo"> <span
				class="fontawesome-lock"></span><input type="password"
				name="password" required placeholder="Contraseña"> <input
				type="submit" value="Login" title="Registra tu cuenta">
			<br> <a href="UsuariosController?action=create">Registro</a>
			</form>
			</div>
</body>
</html>