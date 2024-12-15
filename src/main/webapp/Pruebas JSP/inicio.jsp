<%@ page session="true" %>
<html>
<head>
    <title>Inicio</title>
</head>
<body>
    <h1>Bienvenido al inicio</h1>
    
    <% 
        // Obtener el usuario de la sesión
        model.Usuario usuario = (model.Usuario) session.getAttribute("usuario");
        
        if (usuario != null) {
    %>
        <p>Hola, <%= usuario.getUsername() %>!</p>
        <p><a href="logout">Cerrar sesión</a></p>
    <% 
        } else {
    %>
        <p>No has iniciado sesión. <a href="login.jsp">Iniciar sesión</a></p>
    <% 
        }
    %>
</body>
</html>
