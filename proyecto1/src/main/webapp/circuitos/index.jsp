	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ page import="nombredominio.modelsDAO.CircuitosDAO"%>
	<%@ page import="nombredominio.models.Circuitos"%>
	<%@ include file="../login-validation.jsp"%>
	<%@ page import="java.util.ArrayList"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="daw"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<h1>Lista de Circuitos</h1>
		<a href="CircuitosController?action=create">Añade un circuito</a>
		<table>
			<div class="row">
		        <div class="col-lg-4"></div>
			        <div class="col-lg-4">
			            <table class="table">
			                <thead>
			                    <tr>
			                        <th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">País</th>
			                        <th scope="col">Año</th>
			                        <th scope="col">Longitud</th>
			                        <th scope="col"></th>
			                    </tr>
			                </thead>
			                <tbody class="table-group-divider">
			                <%-- <%
			                	UsuarioDAO usuarioDAO = new UsuarioDAO();
			                	ArrayList<Usuario> usuarios = usuarioDAO.all();
			                	
			                	for (int i= 0; i < usuarios.size(); i++){
			                		Usuario usuario = usuarios.get(i);
			                %>
			                    <tr>
			                        <td><%= usuario.getId() %></td>
			                        <td><%= usuario.getNombre() %></td>
			                        <td><%= usuario.getEmail() %></td>
			                        <td>
				                        <a href="UsuariosController?action=edit&id=<%= usuario.getId() %>">Edit</a>
				                        <a href="UsuariosController?action=delete&id=<%= usuario.getId() %>">Delete</a>
			                        </td>
			                    </tr>
			                    <%} %>
			                     --%>
			                    <daw:forEach var="circuito" items="${usu}">
			                    	<tr>
			                        <td>${circuito.id}</td>
			                        <td>${circuito.nombre}</td>
			                        <td>${circuito.pais}</td>
			                        <td>${circuito.ano}</td>
			                        <td>${circuito.longitud} m</td>
			                        <td>
				                        <a href="CircuitosController?action=edit&id=${circuito.id}">Edit</a>
				                        <a href="CircuitosController?action=delete&id=${circuito.id}">Delete</a>
			                        </td>
			                    </tr>
			                    </daw:forEach>
			                    
			                    <daw:choose>
			                    
			                    <daw:when test="${circuito.id == 5}">		
			                    	<h1>HOLA ${circuito.nombre}</h1>	                    
			                    </daw:when>
			                    
			                    <daw:when test="${circuito.id == 6}">		
			                    	<h1>HOLA ${circuito.nombre}</h1>	                    
			                    </daw:when>
			                    
			                    <daw:otherwise>
			                    </daw:otherwise>
			                    
			                    </daw:choose>
			                    
			                </tbody>
			            </table>
			        </div>
		        <div class="col-lg-4"></div>
		    </div>
		</table>
	
	</body>
</html>