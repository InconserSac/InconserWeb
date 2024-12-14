<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %> <!-- Importa SQLException -->
<%@ page import="dao.RolDAO" %>
<%@ page import="model.Rol" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>
    <h1>Registro de Usuario</h1>
    <form action="../RegisterServlet" method="post">
        <label for="nombre_completo">Nombre completo:</label>
        <input type="text" id="nombre_completo" name="nombre_completo" placeholder="Nombre completo" required>
        <br>
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" placeholder="Nombre de usuario" required>
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <label for="rol">Rol:</label>
        <select id="rol" name="rol" required>
            <%
                RolDAO rolDAO = new RolDAO();
                List<Rol> roles = null;
                try {
                    roles = rolDAO.obtenerTodosLosRoles();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                if (roles != null) {
                    for (Rol rol : roles) {
            %>
                        <option value="<%= rol.getNombre() %>"><%= rol.getNombre() %></option>
            <%
                    }
                }
            %>
        </select>
        <br>
        <input type="submit" value="Registrar">
    </form>
    <div id="usernameMessage"></div>
</body>
<script>
    function checkUsername() {
        var username = document.getElementById("username").value;
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "CheckUsernameServlet?username=" + username, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var response = JSON.parse(xhr.responseText);
                var message = document.getElementById("usernameMessage");
                if (response.exists) {
                    message.innerHTML = "El nombre de usuario ya existe";
                    message.style.color = "red";
                } else {
                    message.innerHTML = "Nombre de usuario disponible";
                    message.style.color = "green";
                }
            }
        };
        xhr.send();
    }
    // Escucha el cambio en el campo de nombre de usuario para verificar la disponibilidad
    document.getElementById("username").addEventListener("input", checkUsername);
</script>
</html>
