<%-- 
    Document   : registrar.jsp
    Created on : 15/09/2020, 06:33:41 PM
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
        <title>FotoFlorez | Registrar</title>
        <link rel="stylesheet" type="text/css" href="login/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="login/css/fontawesome-all.min.css">
        <link rel="stylesheet" type="text/css" href="login/css/iofrm-style.css">
        <link rel="stylesheet" type="text/css" href="login/css/iofrm-theme2.css">
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
                            <p>Ingresa tus datos para crear tu cuenta</p>
                            <div class="page-links">
                                <a href="registrar.jsp" class="active">Registrate</a><a href="index.jsp">Iniciar sesión</a>
                            </div>
                            <form method="POST" action="menu.jsp">
                                <h6>Ingrese un nombre de usuario</h6>
                                <input class="form-control" type="text" name="textUsuario" placeholder="Nombre usuario" required>
                                <h6>Ingrese un correo electrónico</h6>
                                <input class="form-control" type="text" name="textCorreo" placeholder="Correo electrónico" required>
                                <h6>Ingrese una contraseña</h6>
                                <input class="form-control" type="password" name="textClave" placeholder="Contraseña" required>
                                <h6>Repita la contraseña</h6>
                                <input class="form-control" type="password" name="textClave" placeholder="Contraseña" required>
                                <div class="form-button">
                                    <button id="submit" class="ibtn">Registrarse</button>
                                </div>
                            </form>

                          
                            <div class="other-links">
                                <span>Contactanos por</span><a href="#">Facebook</a><a href="#">Google</a><a href="#">Linkedin</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="login/js/jquery.min.js"></script>
        <script type="text/javascript" src="login/js/popper.min.js"></script>
        <script type="text/javascript" src="login/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="login/js/main.js"></script>
    </body>
</html>
