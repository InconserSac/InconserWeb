<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Usuario" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../Styles/styles.css"/>
    </head>
    <body>  
        <div class="loader-wrapper" id="loader-wrapper">
            <div class="loader"></div>
            <div class="loader-text">Cargando...</div>
        </div>

        <div id="content" class="hidden">
            <header class="fixed-header">
                <div class="header-container">
                    <div class="logo">
                        <h1>I n c o n s e r</h1>
                        <h2>Arquitectura e Ingenieria</h2>
                    </div>
                    <nav>
                        <button class="menu-toggle" aria-label="Toggle Menu">☰</button>
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
        // Obtener el usuario de la sesión
        model.Usuario usuario = (model.Usuario) session.getAttribute("usuario");
        
        if (usuario != null) {
                        %>
                        <button class="user-btn"><%= usuario.getUsername() %>!</button>
                        <div class="dropdown-content">
                            <form action="../ListaUsuariosServlet" method="get">
                                <a href="#"><button style="background-color: #0056b3; color: white;" class="logout-btn" type="submit">Perfil de Usuario</button></a>
                            </form>  
                            <form action="../LogoutServlet" method="get">
                                <a href="#"><button style="background-color: red; color: white;" class="logout-btn" type="submit">Cerrar sesión</button></a>
                            </form>     

                        </div>
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
            <section class="hero">
                <div class="overlay">
                    <h1>Creamos Espacios <br> para Experiencias Unicas</h1>
                    <p>+10 anios de Trayectoria</p>
                    <a href="#services" class="cta-btn">Comenzar</a>
                </div>
            </section>

            <section class="stats">
                <div class="intro-text">
                    <h2>Somos un <span class="highlight">Equipo Experto</span> en <span class="highlight">Nuestro Rubro</span></h2>
                </div>
                <div class="stats-container">
                    <div class="stat-item">
                        <img src="../Img/statProyect.png" alt="Icono 1" class="stat-icon">
                        <h3 class="stat-number">100+</h3>
                        <p class="stat-description">Proyectos Completados</p>
                    </div>
                    <div class="stat-item">
                        <img src="../Img/statCustomer.png" alt="Icono 2" class="stat-icon">
                        <h3 class="stat-number">50+</h3>
                        <p class="stat-description">Clientes Satisfechos</p>
                    </div>
                    <div class="stat-item">
                        <img src="../Img/statYear.png" alt="Icono 3" class="stat-icon">
                        <h3 class="stat-number">10</h3>
                        <p class="stat-description">Años de Experiencia</p>
                    </div>
                </div>
            </section>            
            <!-- Seccion de Servicios -->
            <section class="services">
                <div class="container">
                    <h2>Nuestros Servicios</h2>
                    <div class="flex-container">
                        <div class="left-side">
                            <div class="carousel-container">
                                <button class="carousel-button prev" style="background-color: transparent"><img src="../Img/flecha-izquierda.png" alt="" style="width: 30px; height: auto;"></button>
                                <div class="carousel">
                                    <div class="carousel-track">
                                        <!-- Aquí­ puedes añadir hasta 10 servicios -->
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 1" class="servicio-img">
                                            <h3>Servicio 1</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 1.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 2" class="servicio-img">
                                            <h3>Servicio 2</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 2.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 3" class="servicio-img">
                                            <h3>Servicio 3</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 3.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 4" class="servicio-img">
                                            <h3>Servicio 4</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 4.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 5" class="servicio-img">
                                            <h3>Servicio 5</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 5.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 6" class="servicio-img">
                                            <h3>Servicio 6</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 6.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 7" class="servicio-img">
                                            <h3>Servicio 7</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 7.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 8" class="servicio-img">
                                            <h3>Servicio 8</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 8.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 9" class="servicio-img">
                                            <h3>Servicio 9</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 9.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../Img/TeamPicture.png" alt="Servicio 10" class="servicio-img">
                                            <h3>Servicio 10</h3>
                                            <p class="servicio-desc">Descripción breve del servicio 10.</p>
                                        </div>
                                    </div>
                                </div>
                                <button class="carousel-button next" style="background-color: transparent"><img src="../Img/flecha-correcta.png" alt="" style="width: 30px; height: auto;"></button>
                            </div>
                        </div>
                        <div class="right-side">
                            <h3>Somos una empresa constructora sálida y confiable que a lo largo de su experiencia ha sido capaz de manejar obras de gran envergadura brindando servicios de ingenierí­a y construcción garantizando la satisfacción de sus clientes, brindando un producto de calidad en un plazo de tiempo optimizado y a un buen costo.</h3>
                            <a href="servicios.jsp" class="boton-inconser">Ver Servicios</a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- SecciÃ³n de Proyectos Destacados con Carrusel -->
            <section class="featured-projects">
                <div class="container">
                    <h2>Proyectos Destacados</h2>
                    <div class="carousel-container">
                        <button class="carousel-button prev" style="background-color: transparent">
                            <img src="../Img/flecha-izquierda.png" alt="" style="width: 60px; height: auto;">
                        </button>
                        <div class="carousel">
                            <div class="carousel-track">
                                <!-- Agrega tus proyectos aqui­ -->
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png"Proyecto 1" class="project-img">
                                    <h3>Proyecto 1</h3>
                                    <p class="project-desc">Descripción breve del proyecto 1.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 2" class="project-img">
                                    <h3>Proyecto 2</h3>
                                    <p class="project-desc">Descripción breve del proyecto 2.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 3" class="project-img">
                                    <h3>Proyecto 3</h3>
                                    <p class="project-desc">Descripción breve del proyecto 3.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 4" class="project-img">
                                    <h3>Proyecto 4</h3>
                                    <p class="project-desc">Descripción breve del proyecto 4.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 5" class="project-img">
                                    <h3>Proyecto 5</h3>
                                    <p class="project-desc">Descripción breve del proyecto 5.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 5" class="project-img">
                                    <h3>Proyecto 5</h3>
                                    <p class="project-desc">Descripción breve del proyecto 5.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 5" class="project-img">
                                    <h3>Proyecto 5</h3>
                                    <p class="project-desc">Descripción breve del proyecto 5.</p>
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/TeamPicture.png" alt="Proyecto 5" class="project-img">
                                    <h3>Proyecto 5</h3>
                                    <p class="project-desc">Descripción breve del proyecto 5.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-button next" style="background-color: transparent">
                            <img src="../Img/flecha-correcta.png" alt="" style="width: 60px; height: auto;">
                        </button>
                    </div>
                </div>
            </section>
            <!-- Footer -->
            <footer>
                <div class="contact-info">
                    <p>Email: <a href="mailto:servicios@inconser.pe">servicios@inconser.pe</a></p>
                    <p>Teléfono: +51 902 564 104</p>
                    <div class="social-icons">
                        <a href="#"><img src="instagram.png" alt="Instagram"></a>
                        <a href="#"><img src="facebook.png" alt="Facebook"></a>
                        <a href="#"><img src="linkedin.png" alt="LinkedIn"></a>
                    </div>
                </div>
                <div class="footer-info">
                    <p>Dirección: Av. Santo Toribio 143, piso 12, San Isidro</p>
                    <p>Horario de Atención: L-V de 8:00 am a 6:30 pm</p>
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
        </div>
        <script src="../Assets/scripts.js"></script>
    </body>
</html>
