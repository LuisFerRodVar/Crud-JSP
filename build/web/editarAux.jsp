<%-- 
    Document   : editarAux
    Created on : 20 jun 2024, 15:58:25
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="base.*" %>
<%@ page import="modelo.Persona" %>
<%
    String cedula = request.getParameter("idPersona");
    Persona persona = BaseDatos.getInstance().obtenerPersona(cedula);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="editarAux2.jsp">
            <input type="hidden" name="id"  value=<%= persona.getCedula() %> />
            <input type="text" name="nombre" value= <%= persona.getNombre() %> />
            <input type="text" name="animal" value= <%= persona.getAnimal() %> />
            <input type="submit" value="Guardar cambios" />
        </form>
    </body>
</html>
