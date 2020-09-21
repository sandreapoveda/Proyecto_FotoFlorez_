/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;
/**
 *
 * @author 57350
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;



public class Operaciones {
    public String Driver, User, Password, UrlBd, Bd;
    public Operaciones(){
        Driver ="com.mysql.jdbc.Driver";
        User="root";
        Password="";
        Bd="fotoflorez_";
        UrlBd="jdbc:mysql://localhost:3306/" + Bd;  
        
        
    }
    public int IniciarSesion (String usuario, String clave){
        
        
     Connection conn;
     PreparedStatement pst;
     ResultSet result;
     
     
        int rol = 0;
        String sql = "SELECT rol FROM usuario WHERE UsuLogin='" + usuario + "' "
                + "&& UsuPassword = '" + clave + "'";
        
        
        
        try {
     Class.forName
        (this.Driver);
     conn = DriverManager.getConnection
        (this.UrlBd, this.User, this.Password);
            pst = conn.prepareStatement(sql);
            result = pst.executeQuery();

            while (result.next()) {
                
                
                rol = result.getInt(1);
                
                
            }
            conn.close();
            
    } catch (ClassNotFoundException | SQLException e) {
        
        
    }
        return rol;
    }
   }