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
                    <h1>Inconser</h1>
                    <h1> Kevin prueba1</h1>
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
                        <a href="#login">Iniciar Sesión</a>
                        <a href="#register">Registrarse</a>
                    </div>
                </div>
            </div>
        </header>


        <section class="title-section">
            <h1>Proyectos Destacados</h1>
        </section>
        <section class="filter-section">
            <div class="project-filters">
                <button class="filter-btn" data-filter="todos">Todos</button>
                <button class="filter-btn" data-filter="nuevos">Proyectos Nuevos</button>
                <button class="filter-btn" data-filter="proceso">En Proceso</button>
                <button class="filter-btn" data-filter="finalizados">Finalizados</button>
            </div>
        </section>
        <main>
            <div class="project-list">
                <!-- Lista de proyectos -->
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="nuevos">
                    <img src="../Img/TeamPicture.png" alt="Proyecto 1">
                    <div class="project-overlay">
                        <h3>Proyecto 1</h3>
                        <p>Fecha de inicio: 01/01/2024</p>
                        <p>Descripción: Construcción de puentes.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="proceso">
                    <img src="proyecto2.jpg" alt="Proyecto 2">
                    <div class="project-overlay">
                        <h3>Proyecto 2</h3>
                        <p>Fecha de inicio: 15/03/2023</p>
                        <p>Fecha de fin: 20/12/2023</p>
                        <p>Descripción: Infraestructura vial.</p>
                    </div>
                </div>
                <div class="project-card" data-status="finalizados">
                    <img src="proyecto3.jpg" alt="Proyecto 3">
                    <div class="project-overlay">
                        <h3>Proyecto 3</h3>
                        <p>Fecha de inicio: 10/01/2022</p>
                        <p>Fecha de fin: 25/11/2022</p>
                        <p>Descripción: Sistemas hidráulicos.</p>
                    </div>
                </div>
                <!-- Agrega más proyectos aquí -->
            </div>
            
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
