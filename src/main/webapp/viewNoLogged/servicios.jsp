<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h2>Arquitectura e Ingenierí­a</h2>
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
                    <button class="user-btn">Usuario</button>
                    <div class="dropdown-content">
                        <a href="#login">Iniciar Sesión</a>
                        <a href="#register">Registrarse</a>
                    </div>
                </div>
            </div>
        </header>

        <section class="title-section">
            <h1>Nuestros Servicios</h1>
        </section>
        <section class="services-filter-section">
            <div class="services-filters">
                <button class="services-filter-btn" data-filter="todos">Todos</button>
                <button class="services-filter-btn" data-filter="consultoria">Consultorí­a</button>
                <button class="services-filter-btn" data-filter="ingenieria">Ingenierí­a</button>
                <button class="services-filter-btn" data-filter="construccion">Construcción</button>
                <button class="services-filter-btn" data-filter="mantenimiento">Mantenimiento</button>
            </div>
        </section>
        <main>
            <div class="services-list">
                <div class="services-card" data-category="consultoria">
                    <img src="servicio1.jpg" alt="Servicio 1">
                    <div class="services-overlay">
                        <h3>Consultorí­a</h3>
                        <p>Descripción del servicio de consultorÃ­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="ingenieria">
                    <img src="servicio2.jpg" alt="Servicio 2">
                    <div class="services-overlay">
                        <h3>Ingenierí­a</h3>
                        <p>Descripcón del servicio de ingenierí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="consultoria">
                    <img src="servicio1.jpg" alt="Servicio 1">
                    <div class="services-overlay">
                        <h3>Consultorí­a</h3>
                        <p>Descripción del servicio de consultorí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="ingenieria">
                    <img src="servicio2.jpg" alt="Servicio 2">
                    <div class="services-overlay">
                        <h3>Ingenierí­a</h3>
                        <p>Descripción del servicio de ingenierí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="consultoria">
                    <img src="servicio1.jpg" alt="Servicio 1">
                    <div class="services-overlay">
                        <h3>Consultorí­a</h3>
                        <p>Descripción del servicio de consultorí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="ingenieria">
                    <img src="servicio2.jpg" alt="Servicio 2">
                    <div class="services-overlay">
                        <h3>Ingenierí­a</h3>
                        <p>Descripción del servicio de ingenierí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="consultoria">
                    <img src="servicio1.jpg" alt="Servicio 1">
                    <div class="services-overlay">
                        <h3>Consultorí­a</h3>
                        <p>Descripción del servicio de consultorí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="ingenieria">
                    <img src="servicio2.jpg" alt="Servicio 2">
                    <div class="services-overlay">
                        <h3>Ingenierí­a</h3>
                        <p>Descripción del servicio de ingenierí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="consultoria">
                    <img src="servicio1.jpg" alt="Servicio 1">
                    <div class="services-overlay">
                        <h3>Consultorí­a</h3>
                        <p>Descripción del servicio de consultorí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="ingenieria">
                    <img src="servicio2.jpg" alt="Servicio 2">
                    <div class="services-overlay">
                        <h3>Ingenierí­a</h3>
                        <p>Descripción del servicio de ingenierí­a.</p>
                    </div>
                </div>
                <div class="services-card" data-category="construccion">
                    <img src="servicio3.jpg" alt="Servicio 3">
                    <div class="services-overlay">
                        <h3>Construcción</h3>
                        <p>Descripción del servicio de construcción.</p>
                    </div>
                </div>
                <div class="services-card" data-category="mantenimiento">
                    <img src="servicio4.jpg" alt="Servicio 4">
                    <div class="services-overlay">
                        <h3>Mantenimiento</h3>
                        <p>Descripción del servicio de mantenimiento.</p>
                    </div>
                </div>
                <!-- Agrega más servicios aqui­ -->
            </div>
            <div class="services-pagination"></div>
        </main>
        
        
       
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


        <script src="../Assets/scripts.js"></script>
        
    </body>
</html>
