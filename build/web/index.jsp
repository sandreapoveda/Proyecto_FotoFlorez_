<%-- 
    Document   : registrarUusario
    Created on : 11/05/2020, 03:41:48 PM
    Author     : 57350
--%>
<%@page import="modeloDAO.Operaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FotoFlorez | Iniciar sesión</title>
        <link rel="stylesheet" type="text/css" href="login/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="login/css/fontawesome-all.min.css">
        <link rel="stylesheet" type="text/css" href="login/css/iofrm-style.css">
        <link rel="stylesheet" type="text/css" href="login/css/iofrm-theme1.css">
        <link href="assets/img/img.png" rel="shortcut icon" />

    </head>
    <body>
        <div class="form-body" class="container-fluid">

            <div class="row">
                <div class="img-holder">
                    <div class="bg"></div>
                    <div class="info-holder">

                    </div>
                </div>
                <div class="form-holder">
                    <div class="form-content">
                        <div class="form-items">
                            <a href="index.html">
                                <div class="logo">
                                    <img class="logo-size" src="capture/images/logo2.png" alt="" style="width: 320px;">
                                </div>
                            </a>
                            <h3>Te invitamos a que seas parte de nosotros</h3>
                            <p>Accede para obtener nuestros servicios</p>
                            <div class="page-links">
                                <a href="index.jsp" class="active">Iniciar sesión</a><a href="registrar.jsp">Registrate</a>
                            </div>
                            <form method="POST" action="index.jsp">
                                <h6>Nombre de usuario</h6>
                                <input class="form-control" type="text" name="textUsuario" placeholder="Ingrese su usuario" required>
                                <h6>Contraseña</h6>
                                <input class="form-control" type="password" name="textClave" placeholder="Ingrese su contraseña" required>
                                <div class="form-button">
                                    <button id="submit" type="hidden" value="1" name="btnIniciarSesion" class="ibtn">Iniciar sesión</button>
                                </div>
                            </form>
                            <div class="other-links">
                                <span>Contactanos por</span><a href="#">Facebook</a><a href="#">Google</a><a href="#">Linkedin</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="color: green">
                    <%

                        Operaciones operando = new Operaciones();

                        if (request.getParameter("btnIniciarSesion") != null) {

                            String nombre = request.getParameter("textUsuario");
                            String con = request.getParameter("textClave");
                            HttpSession sesion = request.getSession();

                            switch (operando.IniciarSesion(nombre, con)) {
                                case 1:

                                    sesion.setAttribute("usuario", nombre);
                                    sesion.setAttribute("rol", 1);
                                    response.sendRedirect("menu.jsp");
                                    break;

                                case 2:
                                    sesion.setAttribute("usuario", nombre);
                                    sesion.setAttribute("rol", 2);
                                    response.sendRedirect("Profesional.jsp");
                                    break;

                                case 3:
                                    sesion.setAttribute("usuario", nombre);
                                    sesion.setAttribute("rol", 3);
                                    response.sendRedirect("Cliente.jsp");
                                    break;

                                default:
                                    out.write("Usuario NO existe");
                                    break;
                            }
                        }

                        if (request.getParameter("cerrar") != null) {
                            session.invalidate();
                            response.sendRedirect("index.jsp");
                        }

                    %>
                </div>
            </div>
        </div>
   
<script type="text/javascript" src="login/js/jquery.min.js"></script>
<script type="text/javascript" src="login/js/popper.min.js"></script>
<script type="text/javascript" src="login/js/bootstrap.min.js"></script>
<script type="text/javascript" src="login/js/main.js"></script>
</body>
</html>

