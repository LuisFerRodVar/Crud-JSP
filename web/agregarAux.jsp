<%-- 
    Document   : agregarAux
    Created on : 23 may 2024, 9:00:24
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="base.*" %>
<%
    String nombre = request.getParameter("nombre");
    String cedula = request.getParameter("cedula");
    String animal = request.getParameter("animal");
    BaseDatos base = BaseDatos.getInstance();
    base.agregarPersona(nombre,cedula,animal);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= nombre %> se ha agregado exitosamente: </h1>
        <a href="index.jsp">Volver al menú</a>
    </body>
</html>
