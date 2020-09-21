<%-- 
    Document   : registrarVehiculo
    Created on : 8/06/2020, 04:44:04 PM
    Author     : 57350
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Registrar Vehículo</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">VentaCarros</a>

            <form method="post" action="Sesiones">
                <button type="submit" class="btn btn-primary" value="Cerrar Sesion" name=""> Cerrar mi sesion
                </button></form>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
        </nav>
        <div class="card" style="width: 40rem;">
            <img src="img/imagen_1.jpg" class="card-img-top" alt="img/imagen_1.jpg">
                <div class="card-body">        
            <form action="Vehiculo" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputplaca">Placa</label>
                        <input type="text" name="textPlaca" class="form-control" id="inputplaca">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputDatos">Datos</label>
                        <input type="text" name="textDatos" class="form-control" id="inputDatos">
                    </div>
                </div>
               <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputCategor">Categoría</label>
                    <input type="text" name="textCategoria" class="form-control" id="inputCategor">
                </div>
                 <div class="form-group col-md-4">
                    <label for="inputModelo">Modelo</label>
                    <input type="text" name="textModelo" class="form-control" id="inputModelo">
                </div>
               </div>
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputMarca">Marca</label>
                        <input type="text" name="textMarca" class="form-control" id="inputMarca">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputEstado">Estado</label>
                        <input type="text" name="textEstado" class="form-control" id="inputEstado">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="inputPrecio">Precio</label>
                        <input type="text" name="textPrecio" class="form-control" id="inputPrecio">
                    </div>
                </div>                             
                <button type="submit" class="btn btn-primary">Registrar</button>
        <input type="hidden" value="1" name="opcion"> 
        
     <div style ="color: green">
            <% if(request.getAttribute("mensajeError")!=null){%>
        ${mensajeError}
        
        <%} else {%>
         ${mensajeExito}
         
         <% } %>
     </div>
     <p><a href="menu.jsp" class="card-link">Volver</a></p>
     </form> 
    </div>
   </div>   
   </body>
</html>
