<%-- 
    Document   : editarAux2
    Created on : 20 jun 2024, 16:10:01
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="base.BaseDatos" %>
<%
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String animal = request.getParameter("animal");
    BaseDatos.getInstance().editarPersona(id, nombre, animal);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= id %> Se editó correctamente</h1>
    </body>
</html>
