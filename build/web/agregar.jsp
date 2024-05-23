<%-- 
    Document   : agregar
    Created on : 23 may 2024, 8:49:44
    Author     : LuisFer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <body>
        <form action="agregarAux.jsp">
            <p>Nombre: <input required type="text" placeholder="Nombre" name="nombre" /> </p>
            <p>Cedula: <input required type="text" placeholder="Cedula" name="cedula" /> </p>
            <p>Animal favorito: <input required type="text" placeholder="Animal favorito" name="animal" /> </p>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
