<%-- 
    Document   : eliminarAux
    Created on : 20 jun 2024, 16:30:59
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="base.BaseDatos" %>
<%
    String id = request.getParameter("idPersona");
    BaseDatos.getInstance().eliminarPersona(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> <%= id  %> Se eliminó correctamente</h1>
        <a href="./index.jsp">Volver al menú</a>
    </body>
</html>
