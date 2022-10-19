<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ page import="nombredominio.modelsDAO.UsuarioDAO" %>
<%@ page import="nombredominio.models.Usuario" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file = "../login-validation.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="daw" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>USUARIOS | index</title>
		<link href="resources/css/style.css" type="text/css" rel="stylesheet">
	</head>
	<body>
		<h1>USUARIOS INDEX</h1>
		<a href="UsuariosController?action=create">Crear usuario</a>
		<table>
			<div class="row">
		        <div class="col-lg-4"></div>
			        <div class="col-lg-4">
			            <table class="table">
			                <thead>
			                    <tr>
			                        <th scope="col">#</th>
			                        <th scope="col">Nombre</th>
			                        <th scope="col">Email</th>
			                        <th scope="col">Password</th>
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
			                    <daw:forEach var="usuario" items="${usu}">
			                    <daw:if test="${usuario.id == 1}">
			                    	<h1>HOLA ${usuario.nombre}</h1>
			                    </daw:if>
			                    	<tr>
			                        <td>${usuario.id}</td>
			                        <td>${usuario.nombre}</td>
			                        <td>${usuario.email}</td>
			                        <td>${usuario.password}</td>
			                        <td>
				                        <a href="UsuariosController?action=edit&id=${usuario.id}">Edit</a>
				                        <a href="UsuariosController?action=delete&id=${usuario.id}">Delete</a>
			                        </td>
			                    </tr>
			                    </daw:forEach>
			                    
			                    <daw:choose>
			                    
			                    <daw:when test="${usuario.id == 5}">		
			                    	<h1>HOLA ${usuario.nombre}</h1>	                    
			                    </daw:when>
			                    
			                    <daw:when test="${usuario.id == 6}">		
			                    	<h1>HOLA ${usuario.nombre}</h1>	                    
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