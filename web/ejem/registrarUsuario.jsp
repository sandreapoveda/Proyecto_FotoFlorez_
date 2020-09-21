<%-- 
    Document   : registrarUusario
    Created on : 11/05/2020, 03:41:48 PM
    Author     : 57350
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar usuario</title>
    </head>
    <body><center>
        <div class="login-wrap">
	<div class="login-html">
		
		<div class="login-form">
                     <form method="POST" action="index.jsp">
			<div class="sign-in-htm">
                            <h1>Iniciar sesión</h1>
				<div class="group">
					<label for="user" class="label">Usuario</label>
					<input id="user"  type="text" name="textUsuario" class="input" >
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<input id="pass" type="password" name="textClave" class="input" data-type="password">
				</div>
                            <div class="group">
					<label for="pass" class="label">Contraseña</label>
					<input id="pass" type="password" name="textClave" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span>Recuerdar contraseña</label>
				</div>
				<div class="group">
                                     <button class="btn btn-primary">Iniciar</button>
					<input type="hidden" value="1" name="btnIniciarSesion" class="button">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					 <a href="registrarUsuario.jsp">Crear cuenta</a>
				</div>
			</div>
                     </form>
		</div>
	</div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <h1>Registrar usuario</h1>
        <form method="POST" action="Usuario">
            <table>
                
                <tr>
                Usuario:<br>
                <input type="text" name="textUsuario"><br>
                Contraseña<br>
                <input type="password" name="textClave"><br>              
                </tr>
            </table><br>
            <button>Registrar</button>
            <input type="hidden" value="1" name="opcion"><br>
            <br>
            <a href="index.jsp">Iniciar sesión</a>
        </form>
        
        <div style ="color: red">
            <% if(request.getAttribute("mensajeError")!=null){%>
        ${mensajeError}
        
        <%} else {%>
         ${mensajeExito}
         
         <% } %>
        </div>
    </center></body>

