<%@ page session="true" %>
<html>
<head>
    <title>Inicio</title>
</head>
<body>
    <h1>Bienvenido al inicio</h1>
    
    <% 
        // Obtener el usuario de la sesi�n
        model.Usuario usuario = (model.Usuario) session.getAttribute("usuario");
        
        if (usuario != null) {
    %>
        <p>Hola, <%= usuario.getUsername() %>!</p>
        <p><a href="logout">Cerrar sesi�n</a></p>
    <% 
        } else {
    %>
        <p>No has iniciado sesi�n. <a href="login.jsp">Iniciar sesi�n</a></p>
    <% 
        }
    %>
</body>
</html>
