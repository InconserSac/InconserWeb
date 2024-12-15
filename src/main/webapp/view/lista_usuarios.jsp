<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Usuario" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Usuarios</title>
</head>
<body>
    <h1>Lista de Usuarios Registrados</h1>
    <a href="LogoutServlet">Cerrar Sesión</a> <!-- Enlace para cerrar sesión -->
    <br><br>
    <a href="ReporteUsuariosServlet">Descargar Reporte en PDF</a>
    <form action="EnviarPdfServlet" method="post">
        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" required>
        <input type="submit" value="Enviar PDF">
    </form>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Usuario</th>
            <th>Email</th>
            <th>Password</th>
            <th>Rol</th>
            <th>Acciones</th>
        </tr>
        <% 
            List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
            if (usuarios != null) {
                for (Usuario usuario : usuarios) {
        %>
                    <tr>
                        <td><%= usuario.getId() %></td>
                        <td><%= usuario.getUsername() %></td>
                        <td><%= usuario.getEmail() %></td>
                        <td><%= usuario.getPassword() %></td>
                        <td><%= usuario.getRol() %></td>
                        <td>
                            <form action="EditarUsuarioServlet" method="get" style="display:inline;">
                                <input type="hidden" name="id" value="<%= usuario.getId() %>">
                                <input type="submit" value="Editar">
                            </form>
                            <form action="EliminarUsuarioServlet" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<%= usuario.getId() %>">
                                <input type="submit" value="Eliminar" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?');">
                            </form>
                        </td>
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="6">No hay usuarios registrados.</td>
                </tr>
        <% 
            }
        %>
    </table>
</body>
</html>

