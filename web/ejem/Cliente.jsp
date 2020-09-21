<%-- 
    Document   : Cliente
    Created on : 28/06/2020, 06:04:12 PM
    Author     : 57350
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<% 

HttpSession sesion = request.getSession();
String usuario="";
int nivel=0;

if(sesion.getAttribute("usuario")!=null && sesion !=null && sesion.getAttribute("nivel")!=null){
    usuario = sesion.getAttribute("usuario").toString();
    nivel = Integer.parseInt(sesion.getAttribute("nivel").toString()); 
    
    if(nivel!=2){
        response.sendRedirect("index.jsp");
    }  
}else{
    response.sendRedirect("index.jsp");
}


%>

<!DOCTYPE html>
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

            <form method="post" action="cliente.jsp">
                <button type="submit" class="btn btn-primary"> <a href="index.jsp?cerrar=true">Cerrar Sesion</a>
                </button></form>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
        </nav>
        <h1>Bienvenid@ <%=usuario%></h1>
        <h3>Funciones como Cliente</h3>
    </body>
</html>
