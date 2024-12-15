<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Servicios</title>
</head>
<body>
    <h1>Lista de Servicios</h1>

    <!-- Formulario que redirige al servlet cuando se presiona el botón -->
    <form action="../ListaServiciosServlet" method="GET">
        <button type="submit">Ver Servicios</button>
    </form>

    <!-- Tabla con la lista de servicios (si la tienes ya cargada) -->
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Duración</th>
                <th>Imagen</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="servicio" items="${servicios}">
                <tr>
                    <td>${servicio.id}</td>
                    <td>${servicio.nombre}</td>
                    <td>${servicio.descripcion}</td>
                    <td>${servicio.precio}</td>
                    <td>${servicio.duracion} minutos</td>
                    <td><img src="${servicio.imagen}" alt="Imagen del servicio" width="100"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
