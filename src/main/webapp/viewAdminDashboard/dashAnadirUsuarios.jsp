<%-- 
    Document   : dashAnadirUsuarios
    Created on : 15 dic 2024, 3:30:31
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="images/favicon.ico" type="image/ico" />

        <title>Dashboard</title>

        <!-- Bootstrap -->
        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="../build/css/custom.min.css" rel="stylesheet">
    </head>

    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.html" class="site_title"> <img style="width: 40px;" src="../build/images/inconserLogo.png" alt=""><span> Inconser SAC</span></a>
                        </div>
                        <div class="clearfix"></div>
                        <!-- menu profile quick info -->
                        <div class="profile clearfix">
                            <div class="profile_pic">
                                <img src="../build/images/TeamPicture.png " alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Bienvenido,</span>
                                <!-- Nombre de Usuario - Database:V -->
                                <h2>Khynox</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->
                        <br />
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a href="index.html"><i></i> Inicio</a></li>
                                    <!-- Aqui va Formularios para añadir Usuarios / Servicios / Profesionales  -->
                                    <li><a><i></i> Formularios <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="dashAnadirUsuarios.html">Añadir Usuario</a></li>
                                            <li><a href="dashAnadirServicios.html">Añadir Servicio</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i></i> Tablas <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="tables.html">Usuarios</a></li>
                                            <li><a href="tables_dynamic.html">Profesionales</a></li>
                                            <li><a href="tables_dynamic.html">Servicios</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i></i> Estadisticas <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="#">Usuarios</a></li>
                                            <li><a href="#">Servicios</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="menu_section">
                                <h3>Sitios Adicionales</h3>
                                <ul class="nav side-menu">                
                                    <li><a href="../index.html"><i></i> Pagina Principal <span class="label label-success pull-right"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                        <nav class="nav navbar-nav">
                            <ul class=" navbar-right">
                                <li class="nav-item dropdown open" style="padding-left: 15px;">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                        <img src="images/img.jpg" alt="">Khynox
                                    </a>
                                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item"  href="javascript:;"> Perfil</a>
                                        <a class="dropdown-item"  href="javascript:;">
                                            <span>Ajustes</span>
                                        </a>
                                        <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i>Cerrar Sesion</a>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3> Anadir Usuarios </h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <!-- Formulario de Registro de Usuario -->

                        <div class="row">
                            <div class="col-md-12 col-sm-12 ">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Form Design <small>different form elements</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a class="dropdown-item" href="#">Settings 1</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="#">Settings 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <br />
                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                            <div class="item form-group">
                                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">First Name <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <input type="text" id="first-name" required="required" class="form-control ">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Last Name <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <input type="text" id="last-name" name="last-name" required="required" class="form-control">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Middle Name / Initial</label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <input id="middle-name" class="form-control" type="text" name="middle-name">
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="col-form-label col-md-3 col-sm-3 label-align">Gender</label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <div id="gender" class="btn-group" data-toggle="buttons">
                                                        <label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input type="radio" name="gender" value="male" class="join-btn"> &nbsp; Male &nbsp;
                                                        </label>
                                                        <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input type="radio" name="gender" value="female" class="join-btn"> Female
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item form-group">
                                                <label class="col-form-label col-md-3 col-sm-3 label-align">Date Of Birth <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type = 'date'" onmouseover="this.type = 'date'" onclick="this.type = 'date'" onblur="this.type = 'text'" onmouseout="timeFunctionLong(this)">
                                                    <script>
                                                        function timeFunctionLong(input) {
                                                            setTimeout(function () {
                                                                input.type = 'text';
                                                            }, 60000);
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                            <div class="ln_solid"></div>
                                            <div class="item form-group">
                                                <div class="col-md-6 col-sm-6 offset-md-3">
                                                    <button class="btn btn-primary" type="button">Cancel</button>
                                                    <button class="btn btn-primary" type="reset">Reset</button>
                                                    <button type="submit" class="btn btn-success">Submit</button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /Registro de usuario -->

                        <!-- Tabla de Clientes Simples -->

                        <!-- /Tabla de Clientes Simple -->

                        <!-- Tabla de Servicios Simple -->

                        <!-- /Tabla de Servicios Simple -->

                    </div>
                </div>

                <!-- /page content -->




                <footer>
                    <div class="pull-right">
                        Inconser - Create By Khynox - JLCC <a href="https://colorlib.com"> Todos Los Derechos Reservados </a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>
        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <!-- FastClick -->
        <script src="../vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../vendors/nprogress/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="../vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="../vendors/skycons/skycons.js"></script>
        <!-- Flot -->
        <script src="../vendors/Flot/jquery.flot.js"></script>
        <script src="../vendors/Flot/jquery.flot.pie.js"></script>
        <script src="../vendors/Flot/jquery.flot.time.js"></script>
        <script src="../vendors/Flot/jquery.flot.stack.js"></script>
        <script src="../vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
        <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
        <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
        <!-- DateJS -->
        <script src="../vendors/DateJS/build/date.js"></script>
        <!-- JQVMap -->
        <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
        <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
        <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="../vendors/moment/min/moment.min.js"></script>
        <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="../build/js/custom.min.js"></script>

    </body>
</html>
