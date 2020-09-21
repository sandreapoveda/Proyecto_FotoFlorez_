
<%@page import="modeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<%

    HttpSession sesion = request.getSession();
    String usuario = "";
    int rol = 0;

    if (sesion.getAttribute("usuario") != null && sesion != null && sesion.getAttribute("rol") != null) {
        usuario = sesion.getAttribute("usuario").toString();
        rol = Integer.parseInt(sesion.getAttribute("rol").toString());

        if (rol != 1) {
            response.sendRedirect("index.jsp");
        }
    } else {

    }


%>

<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>FotoFlorez | Menú</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
        <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />
        <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
        <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />
        <link href="assets/img/img.png" rel="shortcut icon" />
        <script src="assets/plugins/nprogress/nprogress.js"></script>
    </head>
    <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">
        <script>
            NProgress.configure({showSpinner: false});
            NProgress.start();
        </script>
        <div class="wrapper">
            <aside class="left-sidebar bg-sidebar">
                <div id="sidebar" class="sidebar sidebar-with-footer">
                    <div class="app-brand" style="background-color: #ffffff;">
                        <div class="site-logo">
                            <img src="assets/img/Logis.png" width="200" alt="Image">
                        </div>
                    </div>
                    <div class="sidebar-scrollbar">
                        <ul class="nav sidebar-inner" id="sidebar-menu">
                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#dashboard"
                                   aria-expanded="false" aria-controls="dashboard">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">Administración</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="dashboard"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">
                                        <li >
                                            <a class="sidenav-item-link" href="index.html">
                                                <span class="nav-text">Comercio</span>
                                            </a>
                                        </li>
                                        <li >
                                            <a class="sidenav-item-link" href="analytics.html">
                                                <span class="nav-text">Analítica</span>
                                                <span class="badge badge-success">Nuevo</span>
                                            </a>
                                        </li>
                                    </div>
                                </ul>
                            </li>
                            <li  class="has-sub active expand" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#app"
                                   aria-expanded="false" aria-controls="app">
                                    <i class="mdi mdi-pencil-box-multiple" style="color: #fed181;"></i>
                                    <span class="nav-text">Agenda</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse show"  id="app"
                                     data-parent="#sidebar-menu" style="background: #fed181;">
                                    <div class="sub-menu">
                                        <li >
                                            <a class="sidenav-item-link" href="calendario.jsp">
                                                <span class="nav-text">Calendario</span>
                                            </a>
                                        </li>
                                    </div>
                                </ul>
                            </li>
                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                                   aria-expanded="false" aria-controls="forms">
                                    <i class="mdi mdi-email-mark-as-unread"></i>
                                    <span class="nav-text">Servicios</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="data-tables">
                                                <div class="sub-menu">
                                                    <li >
                                                        <a href="consultarServicio.jsp">Servicios</a>
                                                    </li>                                                  
                                                </div>
                                </ul>
                            </li>
                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#components"
                                   aria-expanded="false" aria-controls="components">
                                    <i class="mdi mdi-folder-multiple-outline"></i>
                                    <span class="nav-text">Componentes</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="data-tables">
                                                <div class="sub-menu">
                                                    <li >
                                                        <a href="consultarComponente.jsp">Componentes</a>
                                                    </li>                                                  
                                                </div>
                                            </ul>
                            </li>
                                
                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#tables"
                                   aria-expanded="false" aria-controls="tables">
                                    <i class="mdi mdi-table"></i>
                                    <span class="nav-text">Personal</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="tables"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">
                                        <li>
                                            <a class="sidenav-item-link" href="consultarEmpleado.jsp">
                                                <span class="nav-text">Empleados</span>

                                            </a>
                                        </li>
                                        <li  class="has-sub" >
                                            <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#data-tables"
                                               aria-expanded="false" aria-controls="data-tables">
                                                <span class="nav-text">Profesionales</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse"  id="data-tables">
                                                <div class="sub-menu">
                                                    <li >
                                                        <a href="camarografo.html">Camarógrafo</a>
                                                    </li>
                                                    <li >
                                                        <a href="fotografo.html">Fotógrafo</a>
                                                    </li>
                                                    <li >
                                                        <a href="auxiliar.html">Auxiliar</a>
                                                    </li>                                                    
                                                </div>
                                            </ul>
                                        </li>
                                    </div>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </aside>


            <div class="page-wrapper">
                <header class="main-header " id="header">
                    <nav class="navbar navbar-static-top navbar-expand-lg">
                        <button id="sidebar-toggler" class="sidebar-toggle">
                            <span class="sr-only">Navegación</span>
                        </button>
                        <div class="search-form d-none d-lg-inline-block">
                            <div class="input-group">
                                <button type="button" name="search" id="search-btn" class="btn btn-flat">
                                    <i class="mdi mdi-magnify"></i>
                                </button>
                                <input type="text" name="query" id="search-input" class="form-control" placeholder="Buscar"
                                       autofocus autocomplete="off" />
                            </div>
                            <div id="search-results-container">
                                <ul id="search-results"></ul>
                            </div>
                        </div>

                        <div class="navbar-right ">
                            <ul class="nav navbar-nav">
                                <li class="dropdown notifications-menu">
                                    <button class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="mdi mdi-bell-outline"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li class="dropdown-header">Tienes 5 nuevas notificaciones</li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-plus"></i> Registra un nuevo usuario
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-remove"></i> Elimina a un usuario
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 07 AM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-chart-areaspline"></i> Lee los reportes
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 12 PM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-supervisor"></i> Nuevo cliente
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                            </a>
                                        </li>
                                        <li class="dropdown-footer">
                                            <a class="text-center" href="#">Ver </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-sidebar-in right-sidebar-2-menu">
                                    <i class="mdi mdi-settings mdi-spin"></i>
                                </li>
                                <!-- User Account -->
                                <li class="dropdown user-menu">
                                    <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                        <img src="assets/img/user/usuario.png" class="user-image" alt="User Image" style="opacity: 0.2;" />
                                        <span class="d-none d-lg-inline-block">Fabian Florez</span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <!-- User image -->
                                        <li class="dropdown-header">
                                            <img src="assets/img/user/usuario.png" class="img-circle" alt="User Image" />
                                            <div class="d-inline-block">
                                                Fabian Florez <small class="pt-1">fotoflorezgroup@gmail.com</small>
                                            </div>
                                        </li>

                                        <li>
                                            <a href="user-profile.html">
                                                <i class="mdi mdi-account"></i> Mi perfil
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-email"></i> Mensajes
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#"> <i class="mdi mdi-diamond-stone"></i> Proyecto </a>
                                        </li>
                                        <li class="right-sidebar-in">
                                            <a href="javascript:0"> <i class="mdi mdi-settings"></i> Configuarción </a>
                                        </li>
                                        <li class="dropdown-footer">
                                            <a href="index.html"> <i class="mdi mdi-logout"></i> Inicio </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>


                <div class="content-wrapper">
                    <div class="content">							
                        <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
                            <div>
                                <h1>Menú</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb p-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <span class="mdi mdi-home"></span>                
                                            </a>
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                            <div>
                                <button type="button" class="mb-1 btn btn-sm btn-outline" style="background-color: #fed181; color: #000;" data-toggle="modal" data-target="#modal-add-member"> Agregar usuario
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card card-default mb-4 mb-lg-5">
                                    <div class="card-header card-header-border-bottom">
                                        <h2>Progreso</h2>
                                    </div>

                                    <div class="card-body p-4 py-xl-6 px-xl-2">
                                        <div class="circle circle-lg"
                                             data-size="200"
                                             data-value="0.83"
                                             data-thickness="20"
                                             data-fill="{
                                             &quot;color&quot;: &quot;#35D00E&quot;
                                             }"
                                             >
                                            <div class="circle-content">
                                                <h6 class="text-uppercase text-dark font-weight-bold">83%</h6>

                                                <strong></strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-xl-8">
                                <div class="card card-default mb-4 mb-lg-5" data-scroll-height="389">
                                    <div class="card-header card-header-border-bottom">
                                        <h2>Actividad de los profesionales</h2>
                                    </div>

                                    <div class="card-body slim-scroll p-0">
                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-primary text-white">
                                                <i class="mdi mdi-cart-outline font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Ferney Florez</a>
                                                <p>Boda: Calle 132 N 27 - 36B</p>
                                            </div>

                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 1 min </span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-success text-white">
                                                <i class="mdi mdi-email-outline font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Sofia Florez</a>
                                                <p>Preboda: Cra 5 N 54B 14</p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 5 min </span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-warning text-white">
                                                <i class="mdi mdi-stack-exchange font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Alejandro Florez</a>
                                                <p>XV: Chía, 10:30pm</p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 1 día</span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-primary text-white">
                                                <i class="mdi mdi-cart-outline font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Amalia Rodriguez</a>
                                                <p>Boda: Calle 156A N 37 - 56 </p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-info text-white">
                                                <i class="mdi mdi-calendar-blank font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="">Yamile García</a>
                                                <p >Boda: Transversal 34A N  56 - 28</p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between border-bottom px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-warning text-white">
                                                <i class="mdi mdi-stack-exchange font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Natalie Rojas</a>
                                                <p >Boda: Transversal 34A N  56 - 28</p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                        </div>

                                        <div class="media py-3 align-items-center justify-content-between px-5">
                                            <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-success text-white">
                                                <i class="mdi mdi-email-outline font-size-20"></i>
                                            </div>
                                            <div class="media-body pr-3">
                                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">John Puerto</a>
                                                <p >Preboda: Cra 24C N  56B - 28</p>
                                            </div>
                                            <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 9 AM</span>
                                        </div>

                                    </div>
                                    <div class="mt-3"></div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-xl-4 col-xxl-3">
                                <div class="card card-default mt-6 mb-4">
                                    <div class="card-body text-center p-4">
                                        <a href="javascript:0" data-toggle="modal" data-target="#modal-contact" class="text-secondary d-inline-block mb-3">
                                            <div class="image mb-3 mt-n9">
                                                <img src="assets/img/user/u-xl-3.jpg" class="img-fluid rounded-circle" alt="Avatar Image">
                                            </div>

                                            <h5 class="card-title text-dark">Amalia Rodriguez</h5>

                                            <ul class="list-unstyled">
                                                <li class="d-flex mb-1">
                                                    <i class="mdi mdi-map mr-1"></i>
                                                    <span>Fotógrafa experta 15/178</span>
                                                </li>
                                                <li class="d-flex">
                                                    <i class="mdi mdi-email mr-1"></i>
                                                    <span>amelliar12@gmail.com</span>
                                                </li>
                                            </ul>
                                        </a>
                                        <div class="row justify-content-center">
                                            <div class="col-4 px-1">
                                                <div class=" circle"
                                                     data-size="60"
                                                     data-value="0.95"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#35D00E&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Puntual</h6>
                                                        <h6>95%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class=" circle"
                                                     data-size="60"
                                                     data-value="0.85"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fec400&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Eficaz</h6>
                                                        <h6>85%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class=" circle"
                                                     data-size="60"
                                                     data-value="0.83"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fe5461&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Calidad</h6>
                                                        <h6>83%</h6>

                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xl-4 col-xxl-3">
                                <div class="card card-default mt-6 mb-4">
                                    <div class="card-body text-center p-4">
                                        <a href="javascript:0" data-toggle="modal" data-target="#modal-contact" class="text-secondary d-inline-block mb-3">
                                            <div class="image mb-3 mt-n9">
                                                <img src="assets/img/user/u-xl-1.jpg" class="img-fluid rounded-circle" alt="Avatar Image">
                                            </div>

                                            <h5 class="card-title text-dark">Sofia Florez</h5>

                                            <ul class="list-unstyled">
                                                <li class="d-flex mb-1">
                                                    <i class="mdi mdi-map mr-1"></i>
                                                    <span>Camarógrafa 15/178</span>
                                                </li>
                                                <li class="d-flex">
                                                    <i class="mdi mdi-email mr-1"></i>
                                                    <span>sofiaflorezz@gmail.com</span>
                                                </li>
                                            </ul>
                                        </a>

                                        <div class="row justify-content-center">
                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.7"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fec400&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Puntual</h6>
                                                        <h6>70%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.9"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#35D00E&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Eficaz</h6>
                                                        <h6>90%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.8"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fe5461&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Calidad</h6>
                                                        <h6>80%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xl-4 col-xxl-3">
                                <div class="card card-default mt-6 mb-4">
                                    <div class="card-body text-center p-4">
                                        <a href="javascript:0" data-toggle="modal" data-target="#modal-contact" class="text-secondary d-inline-block mb-3">
                                            <div class="image mb-3 mt-n9">
                                                <img src="assets/img/user/u-xl-4.jpg" class="img-fluid rounded-circle" alt="Avatar Image">
                                            </div>

                                            <h5 class="card-title text-dark">Natalia Rojas</h5>

                                            <ul class="list-unstyled">
                                                <li class="d-flex mb-1">
                                                    <i class="mdi mdi-map mr-1"></i>
                                                    <span>Camarógrafa 15/178</span>
                                                </li>
                                                <li class="d-flex">
                                                    <i class="mdi mdi-email mr-1"></i>
                                                    <span>nrojas@gmail.com</span>
                                                </li>
                                            </ul>
                                        </a>

                                        <div class="row justify-content-center">
                                            <div class="col-4 px-1">
                                                <div class=" circle"
                                                     data-size="60"
                                                     data-value="1"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#35D00E&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Puntual</h6>
                                                        <h6>100%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.55"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fec400&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Eficaz</h6>
                                                        <h6>55%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.9"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fe5461&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Calidad</h6>
                                                        <h6>90%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-xl-4 col-xxl-3">
                                <div class="card card-default mt-6 mb-4">
                                    <div class="card-body text-center p-4">
                                        <a href="javascript:0" data-toggle="modal" data-target="#modal-contact" class="text-secondary d-inline-block mb-3">
                                            <div class="image mb-3 mt-n9">
                                                <img src="assets/img/user/u-xl-12.jpg" class="img-fluid rounded-circle" alt="Avatar Image">
                                            </div>

                                            <h5 class="card-title text-dark">John Puerto</h5>

                                            <ul class="list-unstyled">
                                                <li class="d-flex mb-1">
                                                    <i class="mdi mdi-map mr-1"></i>
                                                    <span>Auxiliar de fotografía</span>
                                                </li>
                                                <li class="d-flex">
                                                    <i class="mdi mdi-email mr-1"></i>
                                                    <span>johnpuerto122@gmail.com</span>
                                                </li>
                                            </ul>
                                        </a>

                                        <div class="row justify-content-center">
                                            <div class="col-4 px-1">
                                                <div class=" circle"
                                                     data-size="60"
                                                     data-value="0.95"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fe5461&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Puntual</h6>
                                                        <h6>95%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.8"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#35D00E&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Eficaz</h6>
                                                        <h6>80%</h6>
                                                        <strong></strong>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 px-1">
                                                <div class="circle"
                                                     data-size="60"
                                                     data-value="0.4"
                                                     data-thickness="4"
                                                     data-fill="{
                                                     &quot;color&quot;: &quot;#fec400&quot;
                                                     }"
                                                     >
                                                    <div class="circle-content">
                                                        <h6 class="text-uppercase">Calidad</h6>
                                                        <h6>40%</h6>
                                                        <strong></strong>
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

            </div>


            <!-- Contact Modal -->
            <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header justify-content-end border-bottom-0">
                            <button type="button" class="btn-edit-icon" data-dismiss="modal" aria-label="Close">
                                <i class="mdi mdi-pencil"></i>
                            </button>

                            <div class="dropdown">
                                <button class="btn-dots-icon" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical"></i>
                                </button>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>

                            <button type="button" class="btn-close-icon" data-dismiss="modal" aria-label="Close">
                                <i class="mdi mdi-close"></i>
                            </button>
                        </div>

                        <div class="modal-body pt-0">
                            <div class="row no-gutters">
                                <div class="col-md-6">
                                    <div class="profile-content-left px-4">
                                        <div class="card text-center widget-profile px-0 border-0">
                                            <div class="card-img mx-auto rounded-circle">
                                                <img src="assets/img/user/u6.jpg" alt="user image">
                                            </div>

                                            <div class="card-body">
                                                <h4 class="py-2 text-dark">Albrecht Straub</h4>
                                                <p>Albrecht.straub@gmail.com</p>
                                                <a class="btn btn-primary btn-pill btn-lg my-4" href="#">Follow</a>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between ">
                                            <div class="text-center pb-4">
                                                <h6 class="text-dark pb-2">1503</h6>
                                                <p>Friends</p>
                                            </div>

                                            <div class="text-center pb-4">
                                                <h6 class="text-dark pb-2">2905</h6>
                                                <p>Followers</p>
                                            </div>

                                            <div class="text-center pb-4">
                                                <h6 class="text-dark pb-2">1200</h6>
                                                <p>Following</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="contact-info px-4">
                                        <h4 class="text-dark mb-1">Contact Details</h4>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Email address</p>
                                        <p>Albrecht.straub@gmail.com</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Phone Number</p>
                                        <p>+99 9539 2641 31</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Birthday</p>
                                        <p>Nov 15, 1990</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Event</p>
                                        <p>Lorem, ipsum dolor</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modal-add-member" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                    <div class="modal-content">

                        <div class="modal-body p-0">

                            <div class="card-body">
                                <form class="form-pill" action="Usuario" method="post">
                                    <div class="form-group">
                                        <label for="exampleFormControlInput3">Usuario</label>
                                        <input type="text" name="textUsuario" class="form-control" id="exampleFormControlInput3" placeholder="Escriba el usuario">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlPassword3">Contraseña</label>
                                        <input type="password" name="textClave" class="form-control" id="exampleFormControlPassword3" placeholder="Contraseña">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect3">Rol</label>
                                        <select class="form-control" id="exampleFormControlSelect3">
                                            <option>Profesional</option>
                                        </select>
                                    </div>
                                    <div class="modal-footer px-4">
                                        <button type="button" class="btn btn-secondary btn-pill" data-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-warning btn-pill">Agregar usuario</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div></div>



        <div class="right-sidebar-2">
            <div class="right-sidebar-container-2">
                <div class="slim-scroll-right-sidebar-2">

                    <div class="right-sidebar-2-header" style="background-color: #fed181;">
                        <h2>Opciones de diseño</h2>
                        <p>Configuración de la interfaz de usuario</p>
                        <div class="btn-close-right-sidebar-2">
                            <i class="mdi mdi-window-close"></i>
                        </div>
                    </div>

                    <div class="right-sidebar-2-body">
                        <span class="right-sidebar-2-subtitle">Diseño de encabezado</span>
                        <div class="no-col-space">
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 header-fixed-to btn-right-sidebar-2-active">Fixed</a>
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 header-static-to">Static</a>
                        </div>

                        <span class="right-sidebar-2-subtitle">Diseño de la barra lateral</span>
                        <div class="no-col-space">
                            <select class="right-sidebar-2-select" id="sidebar-option-select">
                                <option value="sidebar-fixed">Por defecto fijo</option>
                                <option value="sidebar-fixed-minified">Minificado fijo</option>
                                <option value="sidebar-fixed-offcanvas">Offcanvas fijo</option>
                                <option value="sidebar-static">Estático predeterminado</option>
                                <option value="sidebar-static-minified">Estático minificado</option>
                                <option value="sidebar-static-offcanvas">Estático Offcanvas</option>
                            </select>
                        </div>

                        <span class="right-sidebar-2-subtitle">Fondo del encabezado</span>
                        <div class="no-col-space">
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active header-light-to">Ligero</a>
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 header-dark-to">Oscuro</a>
                        </div>

                        <span class="right-sidebar-2-subtitle">Fondo de navegación</span>
                        <div class="no-col-space">
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active sidebar-dark-to">Oscuro</a>
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 sidebar-light-to">Ligero</a>
                        </div>

                        <span class="right-sidebar-2-subtitle">Dirección</span>
                        <div class="no-col-space">
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active ltr-to">LTR</a>
                            <a href="javascript:void(0);" class="btn-right-sidebar-2 rtl-to">RTL</a>
                        </div>

                        <div class="d-flex justify-content-center" style="padding-top: 30px">
                            <div id="reset-options" style="width: auto; cursor: pointer" class="btn-right-sidebar-2 btn-reset" style="background-color: #fed181;">
                                Restaurar</div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

    </div>
</div>
<footer class="footer mt-auto">
    <div class="copyright bg-white">
        <p>
            &copy; <span id="copy-year">2020</span>FotoFlorez
        </p>
    </div>
    <script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
    </script>
</footer>

</div>
</div>

<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jekyll-search.min.js"></script>
<script src="assets/plugins/circle-progress/circle-progress.js"></script>
<script src="assets/js/sleek.bundle.js"></script>
</body>
</html>
