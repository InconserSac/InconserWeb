<%-- 
    Document   : index
    Created on : 15 dic 2024, 3:31:56
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
                                    <li><a href="index.html"><i class="fa fa-home"></i> Inicio</a></li>
                                    <!-- Aqui va Formularios para añadir Usuarios / Servicios / Profesionales  -->
                                    <li><a><i class="fa fa-edit"></i> Formularios <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="dashAnadirUsuarios.html">Añadir Usuario</a></li>
                                            <li><a href="dashAnadirServicios.html">Añadir Servicio</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-table"></i> Tablas <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="tables.html">Usuarios</a></li>
                                            <li><a href="tables_dynamic.html">Profesionales</a></li>
                                            <li><a href="tables_dynamic.html">Servicios</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bar-chart-o"></i> Estadisticas <span class="fa fa-chevron-down"></span></a>
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
                                    <li><a href="../index.html"><i class="fa fa-laptop"></i> Pagina Principal <span class="label label-success pull-right"></span></a></li>
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
                                <h3>Inicio</h3>
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

                        <!-- Estadisticas Generales -->

                        <div class="row">
                            <div class="col-md-12 col-sm-12  ">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Estadisticas Generales</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Settings 1</a>
                                                    <a class="dropdown-item" href="#">Settings 2</a>
                                                </div>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <div class="row top_tiles" style="margin: 10px 0;">
                                            <div class="col-md-3 tile">
                                                <span> Total de Usuarios </span>
                                                <h2> 200 </h2>
                                                <span class="sparkline_two" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                            <div class="col-md-3 tile">
                                                <span> Clientes </span>
                                                <h2> 120 </h2>
                                                <span class="sparkline_two" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                            <div class="col-md-3 tile">
                                                <span> Profesionales </span>
                                                <h2> 80 </h2>
                                                <span class="sparkline_three" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                            <div class="col-md-3 tile">
                                                <span> Servicios Ofrecidos </span>
                                                <h2> 40 </h2>
                                                <span class="sparkline_two" style="height: 160px;">
                                                    <canvas width="200" height="60" style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /Estadisticas Generales -->

                        <!-- Tabla de Clientes Simples -->

                        <div class="col-md-6 col-sm-6  ">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2> Clientes <small> Datos Basicos de Clientes Registrados </small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Settings 1</a>
                                                <a class="dropdown-item" href="#">Settings 2</a>
                                            </div>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <!-- /Tabla de Clientes Simple -->

                        <!-- Tabla de Servicios Simple -->

                        <div class="col-md-6 col-sm-6  ">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2> Servicios <small> Lista de Servicios Ofrecidos por Inconser </small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Settings 1</a>
                                                <a class="dropdown-item" href="#">Settings 2</a>
                                            </div>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>

                        <!-- /Tabla de Servicios Simple -->

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Projects</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Settings 1</a>
                                                    <a class="dropdown-item" href="#">Settings 2</a>
                                                </div>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <p>Simple table with project listing with progress and editing options</p>

                                        <!-- start project list -->
                                        <table class="table table-striped projects">
                                            <thead>
                                                <tr>
                                                    <th style="width: 1%">#</th>
                                                    <th style="width: 20%">Project Name</th>
                                                    <th>Team Members</th>
                                                    <th>Project Progress</th>
                                                    <th>Status</th>
                                                    <th style="width: 20%">#Edit</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="57"></div>
                                                        </div>
                                                        <small>57% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="47"></div>
                                                        </div>
                                                        <small>47% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                                                        </div>
                                                        <small>60% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="12"></div>
                                                        </div>
                                                        <small>12% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="35"></div>
                                                        </div>
                                                        <small>35% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="87"></div>
                                                        </div>
                                                        <small>87% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>#</td>
                                                    <td>
                                                        <a>Pesamakini Backend UI</a>
                                                        <br />
                                                        <small>Created 01.01.2015</small>
                                                    </td>
                                                    <td>
                                                        <ul class="list-inline">
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                            <li>
                                                                <img src="images/user.png" class="avatar" alt="Avatar">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="project_progress">
                                                        <div class="progress progress_sm">
                                                            <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="77"></div>
                                                        </div>
                                                        <small>77% Complete</small>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-success btn-xs">Success</button>
                                                    </td>
                                                    <td>
                                                        <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- end project list -->

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Media Gallery <small> gallery design </small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Settings 1</a>
                                                    <a class="dropdown-item" href="#">Settings 2</a>
                                                </div>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <div class="row">
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask">
                                                            <p>Your Text</p>
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p>Snow and Ice Incoming for the South</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask">
                                                            <p>Your Text</p>
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p>Snow and Ice Incoming for the South</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask">
                                                            <p>Your Text</p>
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p>Snow and Ice Incoming for the South</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask">
                                                            <p>Your Text</p>
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p>Snow and Ice Incoming for the South</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask">
                                                            <p>Your Text</p>
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p>Snow and Ice Incoming for the South</p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask no-caption">
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p><strong>Image Name</strong>
                                                        </p>
                                                        <p>Snow and Ice Incoming</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask no-caption">
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p><strong>Image Name</strong>
                                                        </p>
                                                        <p>Snow and Ice Incoming</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask no-caption">
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p><strong>Image Name</strong>
                                                        </p>
                                                        <p>Snow and Ice Incoming</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask no-caption">
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p><strong>Image Name</strong>
                                                        </p>
                                                        <p>Snow and Ice Incoming</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-55">
                                                <div class="thumbnail">
                                                    <div class="image view view-first">
                                                        <img style="width: 100%; display: block;" src="images/media.jpg" alt="image" />
                                                        <div class="mask no-caption">
                                                            <div class="tools tools-bottom">
                                                                <a href="#"><i class="fa fa-link"></i></a>
                                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="caption">
                                                        <p><strong>Image Name</strong>
                                                        </p>
                                                        <p>Snow and Ice Incoming</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


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