<%-- 
    Document   : menu
    Created on : 1/06/2020, 11:22:01 AM
    Author     : 57350
--%>

<%@page import="modeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>


<% 

HttpSession sesion = request.getSession();
String usuario="";
int rol=0;

if(sesion.getAttribute("usuario")!=null && sesion !=null && sesion.getAttribute("rol")!=null){
    usuario = sesion.getAttribute("usuario").toString();
    rol = Integer.parseInt(sesion.getAttribute("rol").toString()); 
    
    if(rol!=1){
       response.sendRedirect("index.jsp");
    }  
}else{

}


%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">VentaCarros</a>

            <form method="post" action="menu.jsp">
                <button type="submit" class="btn btn-primary"> <a href="index.jsp?cerrar=true">Cerrar Sesion</a>
                </button></form>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
        </nav>
        <div class="card mb-4" style="max-width: 1500px; position: static">
            <div class="row no-gutters">
            <div class="col-md-4">
           <img src="img/imagen_2.jpg" class="card-img" alt="...">
            </div>
          <div class="col-md-8">
          <div class="card-body">
            <h1 class="display-4">Bienvenido: <%= usuario%></h1>
            <p class="lead">Aquí encontraras las funciones que puedes cumplir como Administrador.</p>
            <hr class="my-4">
            <p>Echa un vistazo a tus funciones</p>
            
          </div>
            </div> 
            </div>
        </div>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Registrar</h5>
                    <p class="card-text">Aqui podrás consultar un vehículo</p>
                    <a href="registrarVehiculo.jsp" class="card-link">Registrar</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Consultar</h5>
                    <p class="card-text">Aqui podrás consultar por placa</p>
                    <a href="consultarVehiculo.jsp" class="card-link">Consultar</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Actualizar</h5>
                    <p class="card-text">Aqui podrás actualizar el vehículo</p>
                    <a href="actualizarVehiculo.jsp" class="card-link">Actualizar</a>
                </div>
            </div>

    </body>
</html>
