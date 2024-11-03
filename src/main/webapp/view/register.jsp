<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de Usuario</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        <form action="../RegisterServlet" method="post">
            <label for="username">Usuario:</label>
            <input type="text" id="nombre_completo" name="nombre_completo" placeholder="Nombre completo">
            <br>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <br>
            <label for="rol">Rol:</label>
            <select id="rol" name="rol" required>
                <option value="Usuario">Usuario</option>
                <option value="Administrador">Administrador</option>
                <option value="Empleado">Empleado</option>
            </select>
            <br>
            <input type="submit" value="Registrar">

        </form>
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
    </script>

</html>
