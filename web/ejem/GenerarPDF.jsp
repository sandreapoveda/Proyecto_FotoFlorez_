<%-- 
    Document   : GenerarPDF
    Created on : 25/06/2020, 05:25:05 PM
    Author     : 57350
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.Conexion"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            File reporte = new File(application.getRealPath("ReporteVehiculos.jasper"));
            Map<String,Object> parametros = new HashMap<String,Object>();
            
            Conexion conexionBD = new Conexion();
            Connection conexion = conexionBD.obtenerConexion();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros, conexion);
            response.setContentType("application/pdf");
            response.setContentLengthLong(bytes.length);
            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes,0,bytes.length);
            
            salida.flush();
            salida.close();
            
        %>
        
        
        
        
    </body>
</html>
