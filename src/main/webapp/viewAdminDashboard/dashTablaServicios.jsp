<%-- 
    Document   : dashTablaServicios
    Created on : 15 dic 2024, 3:33:01
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
                                <h3>Users <small>Some examples to get you started</small></h3>
                            </div>

                            <div class="title_right">
                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-secondary" type="button">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 ">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Default Example <small>Users</small></h2>
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
                                            <div class="col-sm-12">
                                                <div class="card-box table-responsive">
                                                    <p class="text-muted font-13 m-b-30">
                                                        DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                                                    </p>
                                                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </thead>


                                                        <tbody>
                                                            <tr>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Garrett Winters</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>63</td>
                                                                <td>2011/07/25</td>
                                                                <td>$170,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ashton Cox</td>
                                                                <td>Junior Technical Author</td>
                                                                <td>San Francisco</td>
                                                                <td>66</td>
                                                                <td>2009/01/12</td>
                                                                <td>$86,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cedric Kelly</td>
                                                                <td>Senior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2012/03/29</td>
                                                                <td>$433,060</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Airi Satou</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>33</td>
                                                                <td>2008/11/28</td>
                                                                <td>$162,700</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brielle Williamson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2012/12/02</td>
                                                                <td>$372,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Herrod Chandler</td>
                                                                <td>Sales Assistant</td>
                                                                <td>San Francisco</td>
                                                                <td>59</td>
                                                                <td>2012/08/06</td>
                                                                <td>$137,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Rhona Davidson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Tokyo</td>
                                                                <td>55</td>
                                                                <td>2010/10/14</td>
                                                                <td>$327,900</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colleen Hurst</td>
                                                                <td>Javascript Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>39</td>
                                                                <td>2009/09/15</td>
                                                                <td>$205,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sonya Frost</td>
                                                                <td>Software Engineer</td>
                                                                <td>Edinburgh</td>
                                                                <td>23</td>
                                                                <td>2008/12/13</td>
                                                                <td>$103,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jena Gaines</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>30</td>
                                                                <td>2008/12/19</td>
                                                                <td>$90,560</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quinn Flynn</td>
                                                                <td>Support Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2013/03/03</td>
                                                                <td>$342,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Charde Marshall</td>
                                                                <td>Regional Director</td>
                                                                <td>San Francisco</td>
                                                                <td>36</td>
                                                                <td>2008/10/16</td>
                                                                <td>$470,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Haley Kennedy</td>
                                                                <td>Senior Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>43</td>
                                                                <td>2012/12/18</td>
                                                                <td>$313,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tatyana Fitzpatrick</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>19</td>
                                                                <td>2010/03/17</td>
                                                                <td>$385,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Silva</td>
                                                                <td>Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>66</td>
                                                                <td>2012/11/27</td>
                                                                <td>$198,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Paul Byrd</td>
                                                                <td>Chief Financial Officer (CFO)</td>
                                                                <td>New York</td>
                                                                <td>64</td>
                                                                <td>2010/06/09</td>
                                                                <td>$725,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gloria Little</td>
                                                                <td>Systems Administrator</td>
                                                                <td>New York</td>
                                                                <td>59</td>
                                                                <td>2009/04/10</td>
                                                                <td>$237,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bradley Greer</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>41</td>
                                                                <td>2012/10/13</td>
                                                                <td>$132,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dai Rios</td>
                                                                <td>Personnel Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>35</td>
                                                                <td>2012/09/26</td>
                                                                <td>$217,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jenette Caldwell</td>
                                                                <td>Development Lead</td>
                                                                <td>New York</td>
                                                                <td>30</td>
                                                                <td>2011/09/03</td>
                                                                <td>$345,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Yuri Berry</td>
                                                                <td>Chief Marketing Officer (CMO)</td>
                                                                <td>New York</td>
                                                                <td>40</td>
                                                                <td>2009/06/25</td>
                                                                <td>$675,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Caesar Vance</td>
                                                                <td>Pre-Sales Support</td>
                                                                <td>New York</td>
                                                                <td>21</td>
                                                                <td>2011/12/12</td>
                                                                <td>$106,450</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Doris Wilder</td>
                                                                <td>Sales Assistant</td>
                                                                <td>Sidney</td>
                                                                <td>23</td>
                                                                <td>2010/09/20</td>
                                                                <td>$85,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Angelica Ramos</td>
                                                                <td>Chief Executive Officer (CEO)</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2009/10/09</td>
                                                                <td>$1,200,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Joyce</td>
                                                                <td>Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>42</td>
                                                                <td>2010/12/22</td>
                                                                <td>$92,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Chang</td>
                                                                <td>Regional Director</td>
                                                                <td>Singapore</td>
                                                                <td>28</td>
                                                                <td>2010/11/14</td>
                                                                <td>$357,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brenden Wagner</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>28</td>
                                                                <td>2011/06/07</td>
                                                                <td>$206,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fiona Green</td>
                                                                <td>Chief Operating Officer (COO)</td>
                                                                <td>San Francisco</td>
                                                                <td>48</td>
                                                                <td>2010/03/11</td>
                                                                <td>$850,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shou Itou</td>
                                                                <td>Regional Marketing</td>
                                                                <td>Tokyo</td>
                                                                <td>20</td>
                                                                <td>2011/08/14</td>
                                                                <td>$163,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michelle House</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Sidney</td>
                                                                <td>37</td>
                                                                <td>2011/06/02</td>
                                                                <td>$95,400</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Suki Burks</td>
                                                                <td>Developer</td>
                                                                <td>London</td>
                                                                <td>53</td>
                                                                <td>2009/10/22</td>
                                                                <td>$114,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Prescott Bartlett</td>
                                                                <td>Technical Author</td>
                                                                <td>London</td>
                                                                <td>27</td>
                                                                <td>2011/05/07</td>
                                                                <td>$145,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Cortez</td>
                                                                <td>Team Leader</td>
                                                                <td>San Francisco</td>
                                                                <td>22</td>
                                                                <td>2008/10/26</td>
                                                                <td>$235,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Martena Mccray</td>
                                                                <td>Post-Sales support</td>
                                                                <td>Edinburgh</td>
                                                                <td>46</td>
                                                                <td>2011/03/09</td>
                                                                <td>$324,050</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unity Butler</td>
                                                                <td>Marketing Designer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/12/09</td>
                                                                <td>$85,675</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Howard Hatfield</td>
                                                                <td>Office Manager</td>
                                                                <td>San Francisco</td>
                                                                <td>51</td>
                                                                <td>2008/12/16</td>
                                                                <td>$164,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hope Fuentes</td>
                                                                <td>Secretary</td>
                                                                <td>San Francisco</td>
                                                                <td>41</td>
                                                                <td>2010/02/12</td>
                                                                <td>$109,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vivian Harrell</td>
                                                                <td>Financial Controller</td>
                                                                <td>San Francisco</td>
                                                                <td>62</td>
                                                                <td>2009/02/14</td>
                                                                <td>$452,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Timothy Mooney</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>37</td>
                                                                <td>2008/12/11</td>
                                                                <td>$136,200</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jackson Bradshaw</td>
                                                                <td>Director</td>
                                                                <td>New York</td>
                                                                <td>65</td>
                                                                <td>2008/09/26</td>
                                                                <td>$645,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Olivia Liang</td>
                                                                <td>Support Engineer</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2011/02/03</td>
                                                                <td>$234,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bruno Nash</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>38</td>
                                                                <td>2011/05/03</td>
                                                                <td>$163,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sakura Yamamoto</td>
                                                                <td>Support Engineer</td>
                                                                <td>Tokyo</td>
                                                                <td>37</td>
                                                                <td>2009/08/19</td>
                                                                <td>$139,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thor Walton</td>
                                                                <td>Developer</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2013/08/11</td>
                                                                <td>$98,540</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Finn Camacho</td>
                                                                <td>Support Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/07/07</td>
                                                                <td>$87,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serge Baldwin</td>
                                                                <td>Data Coordinator</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2012/04/09</td>
                                                                <td>$138,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zenaida Frank</td>
                                                                <td>Software Engineer</td>
                                                                <td>New York</td>
                                                                <td>63</td>
                                                                <td>2010/01/04</td>
                                                                <td>$125,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zorita Serrano</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>56</td>
                                                                <td>2012/06/01</td>
                                                                <td>$115,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Acosta</td>
                                                                <td>Junior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>43</td>
                                                                <td>2013/02/01</td>
                                                                <td>$75,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cara Stevens</td>
                                                                <td>Sales Assistant</td>
                                                                <td>New York</td>
                                                                <td>46</td>
                                                                <td>2011/12/06</td>
                                                                <td>$145,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hermione Butler</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2011/03/21</td>
                                                                <td>$356,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lael Greer</td>
                                                                <td>Systems Administrator</td>
                                                                <td>London</td>
                                                                <td>21</td>
                                                                <td>2009/02/27</td>
                                                                <td>$103,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jonas Alexander</td>
                                                                <td>Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>30</td>
                                                                <td>2010/07/14</td>
                                                                <td>$86,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shad Decker</td>
                                                                <td>Regional Director</td>
                                                                <td>Edinburgh</td>
                                                                <td>51</td>
                                                                <td>2008/11/13</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Bruce</td>
                                                                <td>Javascript Developer</td>
                                                                <td>Singapore</td>
                                                                <td>29</td>
                                                                <td>2011/06/27</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Donna Snider</td>
                                                                <td>Customer Support</td>
                                                                <td>New York</td>
                                                                <td>27</td>
                                                                <td>2011/01/25</td>
                                                                <td>$112,000</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
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
