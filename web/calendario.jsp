
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
        <title>FotoFlorez</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
        <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />
        <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
        <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />
        <link href="assets/img/img.png" rel="shortcut icon" />
        <script src="assets/plugins/nprogress/nprogress.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
        <link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css">
        <link rel="stylesheet" type="text/css" href="calendario/dist/tui-calendar.css">
        <link rel="stylesheet" type="text/css" href="calendario/examples/css/default.css">
        <link rel="stylesheet" type="text/css" href="calendario/examples/css/icons.css">
        <link href="../../assets/img/favicon.png" rel="shortcut icon" />
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
                                            <a class="sidenav-item-link" href="contacts.html">
                                                <span class="nav-text">Contactos</span>

                                            </a>
                                        </li>

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
                            </li>



                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#components"
                                   aria-expanded="false" aria-controls="components">
                                    <i class="mdi mdi-folder-multiple-outline"></i>
                                    <span class="nav-text">Componentes</span> <b class="caret"></b>
                                </a>


                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#tables"
                                   aria-expanded="false" aria-controls="tables">
                                    <i class="mdi mdi-table"></i>
                                    <span class="nav-text">Empleados</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="tables"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">


                                        <li >
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
            <div class="breadcrumb-wrapper">
	<h1>Agenda</h1>					
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb p-0">
            <li class="breadcrumb-item">
              <a href="index.html">
                <span class="mdi mdi-home"></span>                
              </a>
            </li>
            <li class="breadcrumb-item">
              Agenda
            </li>
            <li class="breadcrumb-item" aria-current="page">Calendario</li>
          </ol>
        </nav>
            </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div id="lnb">
                                <div class="lnb-new-schedule">
                                    <button id="btn-new-schedule" type="button" class="btn btn-default btn-block lnb-new-schedule-btn" data-toggle="modal">
                                        Crear Evento</button>
                                </div>
                                <div id="lnb-calendars" class="lnb-calendars">
                                    <div>
                                        <div class="lnb-calendars-item">
                                            <label>
                                                <input class="tui-full-calendar-checkbox-square" type="checkbox" value="all" checked>
                                                <span></span>
                                                <strong>Ver todo</strong>
                                            </label>
                                        </div>
                                    </div>
                                    <div id="calendarList" class="lnb-calendars-d1">
                                    </div>
                                </div>

                            </div>
                            <div id="right">
                                <div id="menu">
                                    <span class="dropdown">
                                        <button id="dropdownMenu-calendarType" class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="true">
                                            <i id="calendarTypeIcon" class="calendar-icon ic_view_month" style="margin-right: 4px;"></i>
                                            <span id="calendarTypeName">Tipo</span>&nbsp;
                                            <i class="calendar-icon tui-full-calendar-dropdown-arrow"></i>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu-calendarType">
                                            <li role="presentation">
                                                <a class="dropdown-menu-title" role="menuitem" data-action="toggle-daily">
                                                    <i class="calendar-icon ic_view_day"></i>Diario
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weekly">
                                                    <i class="calendar-icon ic_view_week"></i>Semanal
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a class="dropdown-menu-title" role="menuitem" data-action="toggle-monthly">
                                                    <i class="calendar-icon ic_view_month"></i>Mes
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weeks2">
                                                    <i class="calendar-icon ic_view_week"></i>2 semanas
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a class="dropdown-menu-title" role="menuitem" data-action="toggle-weeks3">
                                                    <i class="calendar-icon ic_view_week"></i>3 semanas
                                                </a>
                                            </li>
                                            <li role="presentation" class="dropdown-divider"></li>
                                            <li role="presentation">
                                                <a role="menuitem" data-action="toggle-workweek">
                                                    <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-workweek" checked>
                                                    <span class="checkbox-title"></span>Mostrar fines de semanas
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a role="menuitem" data-action="toggle-start-day-1">
                                                    <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-start-day-1">
                                                    <span class="checkbox-title"></span>Inicio de la semana el lunes
                                                </a>
                                            </li>
                                            <li role="presentation">
                                                <a role="menuitem" data-action="toggle-narrow-weekend">
                                                    <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-narrow-weekend">
                                                    <span class="checkbox-title"></span>Más estrecho los días laborales
                                                </a>
                                            </li>
                                        </ul>
                                    </span>
                                    <span id="menu-navi">
                                        <button type="button" class="btn btn-default btn-sm move-today" data-action="move-today">Today</button>
                                        <button type="button" class="btn btn-default btn-sm move-day" data-action="move-prev">
                                            <i class="calendar-icon ic-arrow-line-left" data-action="move-prev"></i>
                                        </button>
                                        <button type="button" class="btn btn-default btn-sm move-day" data-action="move-next">
                                            <i class="calendar-icon ic-arrow-line-right" data-action="move-next"></i>
                                        </button>
                                    </span>
                                    <span id="renderRange" class="render-range"></span>
                                </div>
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
        
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
        <footer class="footer mt-auto">
            <div class="copyright bg-white">
                <p>
                    &copy; <span id="copy-year">2020</span>FotoFlorez
                </p>
            </div>
            <link href="calendario/examples/css/default.css" rel="stylesheet" type="text/css"/>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://uicdn.toast.com/tui.code-snippet/v1.5.2/tui-code-snippet.min.js"></script>
<script src="https://uicdn.toast.com/tui.time-picker/v2.0.3/tui-time-picker.min.js"></script>
<script src="https://uicdn.toast.com/tui.date-picker/v4.0.3/tui-date-picker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/chance/1.0.13/chance.min.js"></script>
<script src="calendario/dist/tui-calendar.js"></script>
<script src="calendario/examples/js/data/calendars.js"></script>
<script src="calendario/examples/js/data/schedules.js"></script>
<script src="calendario/examples/js/app.js"></script>
</body>
</html>
