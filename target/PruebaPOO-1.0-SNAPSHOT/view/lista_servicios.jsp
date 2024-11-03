<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Servicio" %>
<!DOCTYPE html>
<html>
<head>
    <title>Catálogo de Servicios</title>
</head>
<body>
    <h1>Catálogo de Servicios</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>Duración (minutos)</th>
            <th>Imagen</th>
        </tr>
        <% 
            List<Servicio> servicios = (List<Servicio>) request.getAttribute("servicios");
            if (servicios != null) {
                for (Servicio servicio : servicios) {
        %>
                    <tr>
                        <td><%= servicio.getId() %></td>
                        <td><%= servicio.getNombre() %></td>
                        <td><%= servicio.getDescripcion() %></td>
                        <td><%= servicio.getPrecio() %></td>
                        <td><%= servicio.getDuracion() %></td>
                        <td>
                            <% if (servicio.getImagen() != null && !servicio.getImagen().isEmpty()) { %>
                                <img src="<%= request.getContextPath() %>/<%= servicio.getImagen() %>" alt="Imagen del servicio" width="100" height="100">
                            <% } %>
                        </td>
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="6">No hay servicios disponibles.</td>
                </tr>
        <% 
            }
        %>
    </table>
</body>
</html>
