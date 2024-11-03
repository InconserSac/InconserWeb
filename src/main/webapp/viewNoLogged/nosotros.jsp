<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../Styles/styles.css">
    </head>
    <body>
        <header class="fixed-header">
            <div class="header-container">
                <div class="logo">
                    <h1>Inconser</h1>
                    <h2>Arquitectura e IngenierÃ­a</h2>
                </div>
                <nav>
                    <button class="menu-toggle" aria-label="Toggle Menu">â°</button>
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
                        <a href="#login">Iniciar SesiÃ³n</a>
                        <a href="#register">Registrarse</a>
                    </div>
                </div>
            </div>
        </header>

               <!-- LÃ­nea horizontal -->
               <hr class="custom-hr">

            <main>
                <section class="about">
                    <h2>Nosotros</h2>
                    <div class="about-container">
                        <div class="about-box">
                            <button class="collapsible">Â¿QUIÃNES SOMOS?</button>
                            <div class="content">
                                <p>Somos una empresa peruana que ofrece servicios de gestiÃ³n de proyectos, elaboraciÃ³n de estudios de preinversiÃ³n, expedientes tÃ©cnicos, ejecuciÃ³n y supervisiÃ³n de obras en el sector pÃºblico y privado, comprometidos con el desarrollo de soluciones sostenibles.</p>
                            </div>
                        </div>
                        <div class="about-box">
                            <button class="collapsible">Â¿POR QUÃ ELEGIR INCONSER?</button>
                            <div class="content">
                                <p>Gracias a nuestra amplia experiencia en el desarrollo y construcciÃ³n de proyectos, hemos perfeccionado la capacidad de generar estimaciones de costos precisas. Nuestro objetivo es evitar cualquier desviaciÃ³n en el presupuesto y reducir los riesgos asociados al proyecto.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="mission-vision">
                    <div class="mission">
                        <h4>MisiÃ³n</h4>
                        <p>Gracias a nuestra amplia experiencia en el desarrollo y construcciÃ³n de proyectos, hemos perfeccionado la capacidad de generar estimaciones de costos.</p>
                    </div>
                    <div class="vision">
                        <h4>VisiÃ³n</h4>
                        <p>Gracias a nuestra amplia experiencia en el desarrollo y construcciÃ³n de proyectos, hemos perfeccionado la capacidad de generar estimaciones de costos precisas.</p>
                    </div>
                </section>
            </main>
            <section class="valores">
                <h2>Nuestros valores</h2>
                <p class="descripcion">Nuestros valores describen cÃ³mo pensamos y hacemos las cosas, cÃ³mo lideramos y cÃ³mo mantenemos al cliente en el centro de nuestras decisiones.</p>
                <div class="valores-container">
                    <div class="valor-item">
                        <button class="valor-header">
                            <span>â±ï¸ Sentido de urgencia</span>
                            <span class="icono">â®</span>
                        </button>
                        <div class="valor-content">
                            <p>Actuamos con rapidez y eficiencia para responder a las necesidades de nuestros clientes, asegurando tiempos de entrega Ã³ptimos sin comprometer la calidad.</p>
                        </div>
                    </div>
                    <div class="valor-item">
                        <button class="valor-header">
                            <span>ð Excelencia</span>
                            <span class="icono">â®</span>
                        </button>
                        <div class="valor-content">
                            <p>Nos comprometemos a ofrecer servicios de la mÃ¡s alta calidad, basÃ¡ndonos en la experiencia y el conocimiento especializado de nuestro equipo.</p>
                        </div>
                    </div>
                    <div class="valor-item">
                        <button class="valor-header">
                            <span>ð Resultados</span>
                            <span class="icono">â®</span>
                        </button>
                        <div class="valor-content">
                            <p>Nos enfocamos en alcanzar y superar las expectativas de nuestros clientes, garantizando resultados precisos y sostenibles en cada proyecto.</p>
                        </div>
                    </div>
                    <div class="valor-item">
                        <button class="valor-header">
                            <span>ð¼ ObsesiÃ³n por el Cliente</span>
                            <span class="icono">â®</span>
                        </button>
                        <div class="valor-content">
                            <p>Colocamos a nuestros clientes en el centro de todas nuestras decisiones, trabajando incansablemente para entender y satisfacer sus necesidades Ãºnicas.</p>
                        </div>
                    </div>
                </div>
            </section>
            
            <section class="equipo">
                <h2>Nuestro Equipo</h2>
                <div class="equipo-container">
                    <div class="equipo-item">
                        <img src="../Img/TeamPicture.png" alt="Equipo 1">
                        <div class="overlay">DiseÃ±o, construcciÃ³n e implementaciÃ³n de edificios de salud</div>
                    </div>
                    <div class="equipo-item">
                        <img src="../Img/TeamPicture.png" alt="Equipo 2">
                        <div class="overlay">IngenierÃ­a y desarrollo de proyectos industriales</div>
                    </div>
                    <div class="equipo-item">
                        <img src="../Img/TeamPicture.png" alt="Equipo 3">
                        <div class="overlay">GestiÃ³n y supervisiÃ³n de obras pÃºblicas y privadas</div>
                    </div>
                    <div class="equipo-item">
                        <img src="../Img/TeamPicture.png" alt="Equipo 4">
                        <div class="overlay">PlanificaciÃ³n y consultorÃ­a en sostenibilidad</div>
                    </div>
                </div>
            </section>
            
        <!-- Footer -->
        
        <footer>
            <div class="contact-info">
                <p>Email: <a href="mailto:servicios@inconser.pe">servicios@inconser.pe</a></p>
                <p>TelÃ©fono: +51 902 564 104</p>
                <div class="social-icons">
                    <a href="#"><img src="instagram.png" alt="Instagram"></a>
                    <a href="#"><img src="facebook.png" alt="Facebook"></a>
                    <a href="#"><img src="linkedin.png" alt="LinkedIn"></a>
                </div>
            </div>
            <div class="footer-info">
                <p>DirecciÃ³n: Av. Santo Toribio 143, piso 12, San Isidro</p>
                <p>Horario de AtenciÃ³n: L-V de 8:00 am a 6:30 pm</p>
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
