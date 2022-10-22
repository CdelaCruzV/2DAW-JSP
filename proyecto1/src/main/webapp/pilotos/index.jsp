	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ page import="nombredominio.modelsDAO.PilotosDAO"%>
	<%@ page import="nombredominio.models.Pilotos"%>
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
		<a href="PilotosController?action=create">Añade un piloto</a>
		<table>
			<div class="row">
		        <div class="col-lg-4"></div>
			        <div class="col-lg-4">
			            <table class="table">
			                <thead>
			                    <tr>
			                        <th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">Apellidos</th>
			                        <th scope="col">Nacionalidad</th>
			                        <th scope="col">Edad</th>
			                        <th scope="col">Equipo</th>
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
			                    <daw:forEach var="piloto" items="${usu}">
			                    	<tr>
			                        <td>${piloto.id}</td>
			                        <td>${piloto.nombre}</td>
			                        <td>${piloto.apellidos}</td>
			                        <td>${piloto.nacionalidad}</td>
			                        <td>${piloto.edad}</td>
			                        <td>${piloto.equipo}</td>
			                        <td>
				                        <a href="PilotosController?action=edit&id=${piloto.id}">Edit</a>
				                        <a href="PilotosController?action=delete&id=${piloto.id}">Delete</a>
			                        </td>
			                    </tr>
			                    </daw:forEach>
			                    
			                    <daw:choose>
			                    
			                    <daw:when test="${piloto.id == 5}">		
			                    	<h1>HOLA ${piloto.nombre}</h1>	                    
			                    </daw:when>
			                    
			                    <daw:when test="${piloto.id == 6}">		
			                    	<h1>HOLA ${piloto.nombre}</h1>	                    
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