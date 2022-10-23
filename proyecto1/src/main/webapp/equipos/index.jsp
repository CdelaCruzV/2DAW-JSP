	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ page import="nombredominio.modelsDAO.EquiposDAO"%>
	<%@ page import="nombredominio.models.Equipos"%>
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
	<h1>USUARIOS INDEX</h1>
		<a href="EquiposController?action=create">Añade un equipo</a>
		<table>
			<div class="row">
		        <div class="col-lg-4"></div>
			        <div class="col-lg-4">
			            <table class="table">
			                <thead>
			                    <tr>
			                        <th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">Año</th>
			                        <th scope="col">Victorias</th>
			                        <th scope="col">Podios</th>
			                        <th scope="col">Puntos</th>
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
			                    <daw:forEach var="equipo" items="${usu}">
			                    	<tr>
			                        <td>${equipo.id}</td>
			                        <td>${equipo.nombre}</td>
			                        <td>${equipo.ano}</td>
			                        <td>${equipo.victorias}</td>
			                        <td>${equipo.podios}</td>
			                        <td>${equipo.puntos}</td>
			                        <td>
				                        <a href="EquiposController?action=edit&id=${equipo.id}">Edit</a>
				                        <a href="EquiposController?action=delete&id=${equipo.id}">Delete</a>
			                        </td>
			                    </tr>
			                    </daw:forEach>
			                    
			                    <daw:choose>
			                    
			                    <daw:when test="${equipo.id == 5}">		
			                    	<h1>HOLA ${equipo.nombre}</h1>	                    
			                    </daw:when>
			                    
			                    <daw:when test="${equipo.id == 6}">		
			                    	<h1>HOLA ${equipo.nombre}</h1>	                    
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