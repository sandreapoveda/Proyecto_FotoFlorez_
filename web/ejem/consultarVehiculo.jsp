<%-- 
    Document   : consultarVehiculo
    Created on : 12/06/2020, 10:25:02 PM
    Author     : 57350
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.VehiculoDAO"%>
<%@page import="modeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Vehiculos</title>
    </head>
<body>
    <header>
        <div></div>
          
    </header>
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="#">VentaCarros</a>

        <form method="post" action="Sesiones">
            <button type="submit" class="btn btn-primary" value="Cerrar Sesion" name=""> Cerrar mi sesion
            </button></form>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        </div>
    </nav>
        <%--Espacio para Consultar y Registar--%> 
        <div class="container">
            <div class="row" style="width: 40rem;">
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Consultar vehículo</h5>
                            <form method="post" action="Vehiculo">
                                <table>
                                    <tr>
                                        <th>
                                            <p><input type="text" name="textPlaca" 
                                                      placeholder="Ingrese la placa"><br></p>
                                        </th>    
                                    </tr>
                                </table>                            
                                <button class="btn btn-primary" type="submit">Consultar</button>
                                <input type="hidden" value="3"  name="opcion">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Registrar vehículo</h5>                        
                            <p class="card-text">Aquí podrás registrar un vehículo</p>
                            <form method="post" action="Vehiculo">
                                <button class="btn btn-primary" type="submit">Registrar</button>
                                <input type="hidden" value="1"  name="opcion">
                            </form>                        
                        </div>
                    </div>
                </div>
            </div>
        <div class="">
            <%if (request.getAttribute("mensajeError") != null) { %>
            ${mensajeError}             <%} %>
        </div> <br> <br>


        <table class="table">
            <thead class="table-primary">
                <tr>
                    <th>Placa</th>
                    <th>Datos</th>
                    <th>Categoría</th>
                    <th>Modelo</th>
                    <th>Marca</th>
                    <th>Estado</th>
                    <th>Precio</th>
                </tr>

                <%
                    VehiculoVO vehVO = new VehiculoVO();
                    VehiculoDAO vehDAO = new VehiculoDAO();

                    ArrayList<VehiculoVO> listarVehiculos = vehDAO.listar();
                    for (int i = 0; i < listarVehiculos.size(); i++) {
                        vehVO = listarVehiculos.get(i);

                %>
            </thead>
            <tbody>
                <tr>
                        <td><%=vehVO.getVehPlaca()%></td>
                        <td><%=vehVO.getDatId()%></td>
                        <td><%=vehVO.getCatId()%></td>
                        <td><%=vehVO.getVehModelo()%></td>
                        <td><%=vehVO.getVehMarca()%></td>
                        <td><%=vehVO.getVehEstado()%></td>
                        <td><%=vehVO.getVehPrecio()%></td>
                        <% }%>
                        </tr>
            </tbody>
        
                        <br>
                        <form method="post" action="GenerarPDF.jsp" target="_black"> 
                            <button class="btn btn-primary" type="submit">Generar en PDF</button>
                        </form>
                        <p><a href="menu.jsp" class="card-link">Volver</a></p>
                        </table>
    </div>
</body>
</html>

