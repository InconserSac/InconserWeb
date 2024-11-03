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
                        <h1>Inconser</h1>
                        <h2>Arquitectura e Ingeniería</h2>
                    </div>
                    <nav>
                        <button class="menu-toggle" aria-label="Toggle Menu">☰</button>
                        <ul class="nav-menu">
                            <li><a href="index.html" class="nav-link">INICIO</a></li>
                            <li><a href="nosotros.html" class="nav-link">NOSOTROS</a></li>
                            <li><a href="proyectos.html" class="nav-link">PROYECTOS</a></li>
                            <li><a href="servicios.html" class="nav-link">SERVICIOS</a></li>
                            <li><a href="contacto.html" class="nav-link">CONTACTO</a></li>
                            <li><a href="clientes.html" class="nav-link">CLIENTES</a></li>
                        </ul>
                    </nav>
                    <div class="user-menu">
                        <button class="user-btn">Usuario</button>
                        <div class="dropdown-content">
                            <a href="../Pages/IniciarSesion.html">Iniciar Sesión</a>
                            <a href="../Pages/IniciarSesion.html">Registrarse</a>
                        </div>
                    </div>
                </div>
            </header>



            <section class="hero">
                <div class="overlay">
                    <h1>Bienvenido a Inconser</h1>
                    <p>Servicios profesionales de Ingeniería y Arquitectura</p>
                    <a href="#contacto" class="cta-btn">Contáctanos</a>
                </div>
            </section>
            <!-- Sección de Servicios -->
            <!-- Sección de Servicios y Otra Sección -->
            <section class="services">
                <div class="container">
                    <h2>Nuestros Servicios</h2>
                    <div class="flex-container">
                        <div class="left-side">
                            <div class="carousel-container">
                                <button class="carousel-button prev">❮</button>
                                <div class="carousel">
                                    <div class="carousel-track">
                                        <div class="carousel-item">
                                            <h3>Servicio 1</h3>
                                            <p>Descripción breve del servicio 1. Explica en qué consiste y cómo puede beneficiar a tus clientes.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <h3>Servicio 2</h3>
                                            <p>Descripción breve del servicio 2. Explica en qué consiste y cómo puede beneficiar a tus clientes.</p>
                                        </div>
                                        <div class="carousel-item">
                                            <h3>Servicio 3</h3>
                                            <p>Descripción breve del servicio 3. Explica en qué consiste y cómo puede beneficiar a tus clientes.</p>
                                        </div>
                                    </div>
                                </div>
                                <button class="carousel-button next">❯</button>
                            </div>
                        </div>
                        <div class="right-side">
                            <h3>Otra Sección</h3>
                            <p>Contenido adicional que quieras mostrar en esta mitad de la pantalla.</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Sección de Proyectos Destacados con Carrusel -->
            <section class="featured-projects">
                <div class="container">
                    <h2>Proyectos Destacados</h2>
                    <div class="carousel-container">
                        <button class="carousel-button prev">❮</button>
                        <div class="carousel">
                            <div class="carousel-track">
                                <!-- Agrega tus proyectos aquí -->
                                <div class="project-item">
                                    <h3>Proyecto 1</h3>
                                    <p>Descripción breve del proyecto 1.</p>
                                </div>
                                <div class="project-item">
                                    <h3>Proyecto 2</h3>
                                    <p>Descripción breve del proyecto 2.</p>
                                </div>
                                <div class="project-item">
                                    <h3>Proyecto 3</h3>
                                    <p>Descripción breve del proyecto 3.</p>
                                </div>
                                <div class="project-item">
                                    <h3>Proyecto 3</h3>
                                    <p>Descripción breve del proyecto 3.</p>
                                </div>
                                <div class="project-item">
                                    <h3>Proyecto 3</h3>
                                    <p>Descripción breve del proyecto 3.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-button next">❯</button>
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

        <script>
            window.addEventListener('load', function () {
                document.getElementById("loader-wrapper").style.display = "none";
                document.getElementById("content").classList.remove("hidden");
            });
        </script>





        <script src="../Assets/scripts.js"></script>

    </body>
</html>
