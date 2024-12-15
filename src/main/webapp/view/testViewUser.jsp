<%-- 
    Document   : index
    Created on : 30 oct. 2024, 12:42:50
    Author     : Johan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Usuario" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession currentSession = request.getSession(false);
    if (currentSession == null || currentSession.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp"); // Redirige al login si no hay sesión activa
        return;
    } else {
        Usuario usuario = (Usuario) currentSession.getAttribute("usuario");
    }
%>




<!DOCTYPE html>
<html>
<head>
    <title>Página Principal</title>
</head>
<body>
    <h1>Página Principal</h1>
    <form action="../ListaUsuariosServlet" method="get">
        <input type="submit" value="Mostrar Usuarios Registrados">
    </form>
    
    <li><a href="añadir_servicio.jsp">Añadir Nuevo Servicio</a></li>

</body>
</html>
