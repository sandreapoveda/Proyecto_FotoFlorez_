<%-- 
    Document   : actualizarVehiculo
    Created on : 12/06/2020, 10:32:50 PM
    Author     : 57350
--%>

<%@page import="modeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Registrar Vehiculo</title>
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
                <h1>Actualizar Vehiculo</h1>
                <% VehiculoVO vehVO = (VehiculoVO) request.getAttribute("vehiculo");
            if (vehVO != null) {%>
                <form action="Vehiculo" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputplaca">Placa</label>
                            <input type="text" name="textPlaca" class="form-control" id="inputplaca" value="<%=vehVO.getVehPlaca()%>">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputDatos">Datos</label>
                            <input type="text" name="textDatos" class="form-control" id="inputDatos" value="<%=vehVO.getDatId()%>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputCategor">Categoría</label>
                            <input type="text" name="textCategoria" class="form-control" id="inputCategor" value="<%=vehVO.getCatId()%>">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputModelo">Modelo</label>
                            <input type="text" name="textModelo" class="form-control" id="inputModelo" value="<%=vehVO.getVehModelo()%>">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputMarca">Marca</label>
                            <input type="text" name="textMarca" class="form-control" id="inputMarca" value="<%=vehVO.getVehMarca()%>">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputEstado">Estado</label>
                            <input type="text" name="textEstado" class="form-control" id="inputEstado" value="<%=vehVO.getVehEstado()%>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-8">
                            <label for="inputPrecio">Precio</label>
                            <input type="text" name="textPrecio" class="form-control" id="inputPrecio" value="<%=vehVO.getVehPrecio()%>">
                        </div>
                    </div> 
                    <button type="submit" class="btn btn-primary">Actualizar</button>
                    <input type="hidden" value="2" name="opcion"> 
                    <%} %>
                    <br>
                    <a href="menu.jsp">Volver</a><br>
                    <div style="color: red">
                        <%if (request.getAttribute("mensajeError") != null) { %>
                        ${mensajeError}
                    </div>
                    <div style="color: green">
                        <%} else { %>
                        ${mensajeExito}
                        <%}%>
                    </div>
                </form></div>
        </div>
    </body>
</html>