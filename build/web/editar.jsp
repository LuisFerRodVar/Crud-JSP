<%-- 
    Document   : editar
    Created on : 23 may 2024, 8:53:48
    Author     : LuisFer
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="base.*" %>
<%
    String personas =BaseDatos.getInstance().listarPersonas();
    String[] personasAux = personas.split("%");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="editarAux.jsp">
            <select name="idPersona">
                <% for (int i = 0; i < personasAux.length; i ++) {%>
                <option value= <%=personasAux[i].split(";")[1] %>> <%= personasAux[i].split(";")[0] %> </option>
                <%} %>
            </select>
            <input type="submit" value="Editar" />
        </form>
        
    </body>
</html>
