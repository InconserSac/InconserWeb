<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login y Register - ServiciosPeru</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../Styles/stylesLog.css">
        <script>
            function checkUsername() {
                var username = document.getElementById("username").value;
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "../" + "CheckUsernameServlet?username=" + username, true);
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
    </head>
    <body>
        <main>
            <div class="contenedor__todo">
                <div class="caja__trasera">
                    <div class="caja__trasera-login">
                        <h3>Bienvenido A Inconser</h3>
                        <p>Inicia sesion para entrar en la pagina</p>
                        <button id="btn__iniciar-sesion">Iniciar Sesi√≥n</button>
                    </div>
                    <div class="caja__trasera-register">
                        <h3>Todavia no tienes una cuenta?</h3>
                        <p>Reg√≠strate para que puedas iniciar sesi√≥n</p>
                        <button id="btn__registrarse">Reg√≠strarse</button>
                    </div>
                </div>
                <!--Formulario de Login y registro-->
                <div class="contenedor__login-register">
                    <!--Login-->
                    <form action="../LoginServlet" method="post" class="formulario__login">
                        <h2>Iniciar SesiÛn</h2>
                        <input type="hidden" name="action" value="login">
                        <input type="text" id="username" name="username" required placeholder="Usuario">
                        <input type="password" id="password" name="password" required placeholder="ContraseÒa">
                        <button type="submit">Entrar</button>
                    </form>

                    <form action="../RegisterServlet" method="post" class="formulario__register">
                        <h2>Registrarse</h2>
                        <input type="hidden" name="action" value="register">
                        <input type="text" id="nombre_completo" name="nombre_completo" placeholder="Nombre completo">
                        <input type="email" id="email" name="email" required placeholder="Correo Electronico">
                        <input type="text" id="username" name="username" required placeholder="Usuario" onkeyup="checkUsername()">
                        <input type="password" id="password" name="password" required placeholder="ContraseÒa">
                        <button type="submit">Registrarse</button>
                        <label Style="display: none" for="rol">Rol:</label>
                        <select Style="display: none" id="rol" name="rol" required>
                            <option value="Usuario">Usuario</option>
                            <option value="Administrador">Administrador</option>
                            <option value="Empleado">Empleado</option>
                        </select>
                    </form>

                </div>
            </div>
        </main>
        <script src="../Assets/scriptsLog.js"></script>
    </body>
</html>
