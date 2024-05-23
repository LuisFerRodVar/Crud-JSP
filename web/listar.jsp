<%-- 
    Document   : obtener
    Created on : 23 may 2024, 8:54:08
    Author     : LuisFer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="base.*" %>
<% 
    BaseDatos base = BaseDatos.getInstance();
    String lista = base.listarPersonas();
    String[] personas = lista.split("%");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <td>Nombre</td>
                    <td>Cedula</td>
                    <td>Animal</td>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < personas.length; i ++){ %>
                <tr>
                    <td>
                        <%= personas[i].split(";")[0] %>
                    </td>
                    <td>
                        <%= personas[i].split(";")[1] %>
                    </td>
                    <td>
                        <%= personas[i].split(";")[2] %>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
