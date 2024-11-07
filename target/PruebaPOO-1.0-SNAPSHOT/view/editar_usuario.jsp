<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Usuario" %>
<% 
    Usuario usuario = (Usuario) request.getAttribute("usuario");
%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession currentSession = request.getSession(false);
    if (currentSession == null || currentSession.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp"); // Redirige al login si no hay sesión activa
        return;
    } else {
        Usuario usuarioSession = (Usuario) currentSession.getAttribute("usuario");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Usuario</title>
</head>
<body>
    <h1>Editar Usuario</h1>
    <form action="ActualizarUsuarioServlet" method="post">
        <input type="hidden" name="id" value="<%= usuario.getId() %>">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" value="<%= usuario.getUsername() %>" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= usuario.getEmail() %>" required>
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password">
        <br>
        <label for="rol">Rol:</label>
        <select id="rol" name="rol" required>
            <option value="Usuario" <%= "Usuario".equals(usuario.getRol()) ? "selected" : "" %>>Usuario</option>
            <option value="Administrador" <%= "Administrador".equals(usuario.getRol()) ? "selected" : "" %>>Administrador</option>
            <option value="Empleado" <%= "Empleado".equals(usuario.getRol()) ? "selected" : "" %>>Empleado</option>
        </select>
        <br>
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>
