<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="nombredominio.modelsDAO.CircuitosDAO"%>
<%@ page import="nombredominio.models.Circuitos"%>
<%@ include file="../login-validation.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>A�adir Circuitos</title>
<link href="./resources/css/styleform.css" type="text/css"
	rel="stylesheet">
</head>
<body style="background-image: url(./resources/img/f1e.jpg);">
	<p class="texto">A�adir Circuitos</p>
	<div class="Login">
		<form method="POST" action="CircuitosController?action=create">

			<span class="fontawesome-envelope-alt"></span><input type="hidden"
				name="id" placeholder="id"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="nombre" placeholder="Nombre"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="pais" placeholder="Pa�s"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="ano" placeholder="A�o"> 
				
				<span
				class="fontawesome-lock"></span><input type="text" name="longitud" placeholder="Longitud"> 
				
				<input
				type="submit" value="A�adir" title="A�adir Circuitos"> <br>
	</div>
</body>
</html>