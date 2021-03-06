<%-- 
    Document   : consultarEmpleado
    Created on : 23/08/2020, 04:52:43 PM
    Author     : 57350
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.EmpleadoDAO"%>
<%@page import="modeloVO.EmpleadoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">


        <title>FotoFlorez</title>

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
                            <h1>Empleado</h1>
                            <div>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb p-0"> 
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <span class="mdi mdi-home"></span>                
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        Menú
                                    </li>
                                    <li class="breadcrumb-item" aria-current="page">Empleado</li>
                                </ol>
                            </nav>
                            </div>
                            <div>
                                <form method="post" action="Empleado">
                                    <button  class="mb-1 btn btn-sm btn-outline" style="background-color: #fed181; color: #000;" type="submit">Agregar empleado</button>
                                <input type="hidden" value="1"  name="opcion">
                            </form>
                            </div>
                        </div>
                        <div class="col-lg-12">          
                                    <div class="card">
                                        
                                    <div class="card-body">
                                        <div>
                                            <h5>Consulta a un empleado</h5>
                                        </div>
                                        <div class="input-group">
                                            <form method="post" action="Empleado">
                                                <input class="form-control" type="text" name="textEmpleado"placeholder="Ingrese el empleado"  aria-label="search" >
                                                </div>
                                                <button type="submit"  class="mb-1 btn btn-sm btn-outline" style="background-color: #fed181; color: #000;">Consultar</button>
                                                <input type="hidden" value="3"  name="opcion">
                                            </form>
                                        </div>
                                    </div>
                                </div> 
                            <div class="col-12">
                                <!-- Recent Order Table -->
                                <div class="card card-table-border-none" id="recent-orders">
                                    <div class="card-header justify-content-between">
                                        <h2>Más recientes</h2>
                                        <div class="date-range-report ">
                                            <span></span>
                                        </div>
                                    </div>
                                    <div class="card-body pt-0 pb-5">
                                        <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Usuario</th>
                                                    <th>Tipo de identificación</th>
                                                    <th>Número de identificación</th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                </tr>

                                                <%
                                                    EmpleadoVO EmpVO = new EmpleadoVO();
                                                    EmpleadoDAO EmpDAO = new EmpleadoDAO();

                                                    ArrayList<EmpleadoVO> listarEmpleado = EmpDAO.listar();
                                                    for (int i = 0; i < listarEmpleado.size(); i++) {
                                                        EmpVO = listarEmpleado.get(i);

                                                %>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><%=EmpVO.getId_empleado()%></td>
                                                    <td><%=EmpVO.getusuId()%></td>
                                                    <td><%=EmpVO.getTipo_identificacion()%></td>
                                                    <td><%=EmpVO.getN_identificacion()%></td>
                                                    <td><%=EmpVO.getNombre_emp()%></td>
                                                    <td><%=EmpVO.getApellido_emp()%></td>


                                                    <% }%>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div
                            </div>
                        </div>
                    </div>
                </div>

                <div class="right-sidebar-2">
                    <div class="right-sidebar-container-2">
                        <div class="slim-scroll-right-sidebar-2">

                            <div class="right-sidebar-2-header">
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
                                    <div id="reset-options" style="width: auto; cursor: pointer" class="btn-right-sidebar-2 btn-reset">Reset
                                        Settings</div>
                                </div>

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
                        &copy; <span id="copy-year">2020</span> FotoFlorez

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



    <script src="assets/plugins/daterangepicker/moment.min.js"></script>
    <script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
    <script>
                    jQuery(document).ready(function () {
                        jQuery('input[name="dateRange"]').daterangepicker({
                            autoUpdateInput: false,
                            singleDatePicker: true,
                            locale: {
                                cancelLabel: 'Clear'
                            }
                        });
                        jQuery('input[name="dateRange"]').on('apply.daterangepicker', function (ev, picker) {
                            jQuery(this).val(picker.startDate.format('MM/DD/YYYY'));
                        });
                        jQuery('input[name="dateRange"]').on('cancel.daterangepicker', function (ev, picker) {
                            jQuery(this).val('');
                        });
                    });
    </script>



    <script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
    <script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>



    <script>
                    jQuery(document).ready(function () {
                        jQuery('#basic-data-table').DataTable({
                            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
                        });
                    });
    </script>



    <script src="assets/js/sleek.bundle.js"></script>
</body>

</html>


