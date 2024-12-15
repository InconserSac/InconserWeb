<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Servicio" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Servicios</title>
        <link rel="stylesheet" href="styles.css"> <!-- Enlace a tu archivo CSS -->
    </head>
    <body>

        <div class="carousel-container">
            <button class="carousel-button prev" style="background-color: transparent">
                <img src="../Img/flecha-izquierda.png" alt="Flecha izquierda" style="width: 30px; height: auto;">
            </button>
            <div class="carousel">
                <div class="carousel-track">
                    <!-- Usamos un bucle de scriptlet para recorrer los servicios -->
                    <% 
                        List<Servicio> servicios = (List<Servicio>) request.getAttribute("servicios");
                        for (Servicio servicio : servicios) {
                    %>
                    <div class="carousel-item">
                        <img src="<%= servicio.getImagen() %>" alt="<%= servicio.getNombre() %>" class="servicio-img">
                        <h3><%= servicio.getNombre() %></h3>
                        <p class="servicio-desc"><%= servicio.getDescripcion() %></p>
                    </div>
                    <% } %>
                </div>
            </div>
            <button class="carousel-button next" style="background-color: transparent">
                <img src="../Img/flecha-derecha.png" alt="Flecha derecha" style="width: 30px; height: auto;">
            </button>
        </div>
        <script>
            let currentIndex = 0;
            const items = document.querySelectorAll('.carousel-item');
            const totalItems = items.length;

            document.querySelector('.carousel-button.next').addEventListener('click', () => {
                if (currentIndex < totalItems - 1) {
                    currentIndex++;
                    updateCarousel();
                }
            });

            document.querySelector('.carousel-button.prev').addEventListener('click', () => {
                if (currentIndex > 0) {
                    currentIndex--;
                    updateCarousel();
                }
            });

            function updateCarousel() {
                const newTransformValue = -currentIndex * 270; // Ajusta el valor según el tamaño de los elementos
                document.querySelector('.carousel-track').style.transform = `translateX(${newTransformValue}px)`;
            }
        </script>

    </body>
</html>
