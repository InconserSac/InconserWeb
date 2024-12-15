<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Iniciar sesión</h1>
    
    <form action="../LoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Iniciar sesión">
    </form>

    <% 
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color:red;"><%= error %></p>
    <% 
        }
    %>
</body>
</html>
