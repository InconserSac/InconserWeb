<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Añadir Servicio</title>
</head>
<body>
    <h1>Añadir Nuevo Servicio</h1>
    <form action="../AñadirServicioServlet" method="post" enctype="multipart/form-data">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <br>
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>
        <br>
        <label for="precio">Precio:</label>
        <input type="number" step="0.01" id="precio" name="precio" required>
        <br>
        <label for="duracion">Duración (minutos):</label>
        <input type="number" id="duracion" name="duracion" required>
        <br>
        <label for="imagen">Imagen:</label>
        <input type="file" id="imagen" name="imagen">
        <br>
        <input type="submit" value="Añadir Servicio">
    </form>
</body>
</html>
