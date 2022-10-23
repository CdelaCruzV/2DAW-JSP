<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link href="./resources/css/style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="contenedor">
		<div id="cabecera">
			<nav id="menu">
				<ul>
					<li><a href="home.jsp" class="active">Home</a></li>
					<li><a href="PilotosController?action=index">Pilotos</a></li>
					<li><a href="EquiposController?action=index">Equipos</a></li>
					<li><a href="CircuitosController?action=index">Circuitos</a></li>
					<li><a href="UsuariosController?action=index">Usuarios</a></li>
					<li><a href="AuthController?action=login">Login / Register</a></li>
				</ul>
			</nav>
		</div>

		<div id="izquierda">
		<img src="./resources/img/f1e.jpg" style="width:100%">
		</div>
		
		<div id="despedida">
			<footer>
				<p>&copy; Pie de página</p>
			</footer>
		</div>
	</div>

</body>
</html>