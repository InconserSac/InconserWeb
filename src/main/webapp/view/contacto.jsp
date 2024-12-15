<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../Styles/styles.css"/>
    </head>
    <body>

        <header class="fixed-header">
            <div class="header-container">
                <div class="logo">
                        <h1>I n c o n s e r</h1>
                    <h2>Arquitectura e Ingenier��a</h2>
                </div>
                <nav>
                    <button class="menu-toggle" aria-label="Toggle Menu">?</button>
                    <ul class="nav-menu">
                        <li><a href="index.jsp" class="nav-link">INICIO</a></li>
                        <li><a href="nosotros.jsp" class="nav-link">NOSOTROS</a></li>
                        <li><a href="proyectos.jsp" class="nav-link">PROYECTOS</a></li>
                        <li><a href="servicios.jsp" class="nav-link">SERVICIOS</a></li>
                        <li><a href="contacto.jsp" class="nav-link">CONTACTO</a></li>
                        <li><a href="../view/login.jsp" class="nav-link">CLIENTES</a></li>
                    </ul>
                </nav>
                <div class="user-menu">
                    <% 
    // Obtener el usuario de la sesi�n
    model.Usuario usuario = (model.Usuario) session.getAttribute("usuario");
        
    if (usuario != null) {
                    %>
                    <button class="user-btn"><%= usuario.getUsername() %>!</button>
                    <div class="dropdown-content">
                        <a href="../view/login.jsp">Perfil De Usuario</a>
                        <form action="../LogoutServlet" method="get">
                            <a href="#"><button style="background-color: red; color: white;" class="logout-btn" type="submit">Cerrar sesi�n</button></a>
                        </form>                       </div>
                        <% 
                            } else {
                        %>
                    <button class="user-btn">Usuario</button>
                    <div class="dropdown-content">
                        <a href="../view/login.jsp">Iniciar Sesion</a>
                        <a href="../Pages/IniciarSesion.html">Registrarse</a>
                    </div>
                    <% 
                        }
                    %>
                </div>
            </div>
        </header>


        <div class="contact-form-container">
            <h2>Solicita Nuestros Servicios</h2>
            <p>Por favor, completa el formulario para recibir una cotizaci�n precisa.</p>
            <form id="contact-form">
                <fieldset>
                    <legend>Informaci�n Personal</legend>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">Nombre Completo:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Correo Electr�nico:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="phone">Tel�fono:</label>
                            <input type="tel" id="phone" name="phone" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Direcci�n:</label>
                            <input type="text" id="address" name="address">
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Detalles del Proyecto</legend>
                    <div class="form-group">
                        <label for="service-type">Tipo de Servicio Solicitado:</label>
                        <select id="service-type" name="service-type">
                            <option value="servicio1">Servicio 1</option>
                            <option value="servicio2">Servicio 2</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="project-description">Descripci�n del Proyecto:</label>
                        <textarea id="project-description" name="project-description"></textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="start-date">Fecha de Inicio Deseada:</label>
                            <input type="date" id="start-date" name="start-date">
                        </div>
                        <div class="form-group">
                            <label for="end-date">Fecha de Finalizaci�n Deseada:</label>
                            <input type="date" id="end-date" name="end-date">
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Presupuesto Estimado</legend>
                    <div class="form-group">
                        <label for="budget">Rango de Presupuesto:</label>
                        <select id="budget" name="budget">
                            <option value="low">Bajo</option>
                            <option value="medium">Medio</option>
                            <option value="high">Alto</option>
                        </select>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Preferencias de Comunicaci�n</legend>
                    <div class="form-group">
                        <label for="contact-method">M�todo Preferido de Contacto:</label>
                        <select id="contact-method" name="contact-method">
                            <option value="email">Correo Electr�nico</option>
                            <option value="phone">Tel�fono</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="contact-time">Horario Preferido para Ser Contactado:</label>
                        <input type="text" id="contact-time" name="contact-time">
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Comentarios Adicionales</legend>
                    <div class="form-group">
                        <label for="comments">Comentarios/Observaciones:</label>
                        <textarea id="comments" name="comments"></textarea>
                    </div>
                </fieldset>
                <button type="submit">Enviar Solicitud</button>
            </form>
            <div id="confirmation-message" style="display:none;">
                <p>Gracias por enviar tu solicitud. Nos pondremos en contacto en un plazo de 24-48 horas.</p>
            </div>
        </div>




        <!-- Footer -->
        <footer>
            <div class="contact-info">
                <p>Email: <a href="mailto:servicios@inconser.pe">servicios@inconser.pe</a></p>
                <p>Tel�fono: +51 902 564 104</p>
                <div class="social-icons">
                    <a href="#"><img src="instagram.png" alt="Instagram"></a>
                    <a href="#"><img src="facebook.png" alt="Facebook"></a>
                    <a href="#"><img src="linkedin.png" alt="LinkedIn"></a>
                </div>
            </div>
            <div class="footer-info">
                <p>Direcci�n: Av. Santo Toribio 143, piso 12, San Isidro</p>
                <p>Horario de Atenci�n: L-V de 8:00 am a 6:30 pm</p>
            </div>
            <div class="footer-menu">
                <ul>
                    <li><a href="#">Nosotros</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#">Proyectos</a></li>
                    <li><a href="#">Clientes</a></li>
                </ul>
            </div>
            <div class="footer-logo">
                <img src="../Img/ccl.png" alt="CCL Logo">
            </div>
        </footer>


        <script src="../Assets/scripts.js"></script>

    </body>
</html>