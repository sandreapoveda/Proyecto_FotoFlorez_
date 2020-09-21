/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.UsuarioVO;
import util.Conexion;
import util.Crud;
/**
 *
 * @author 57350
 */
public class UsuarioDAO extends Conexion implements Crud{
    
   //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    // metodos
    public boolean operaciones = false;
    //
    public String usuId="", usuLogin="", usuPassword="";
    //operaciones de BD
    public String sql;
    
    public UsuarioDAO(UsuarioVO usuVO){
        //sobrecarga de métodos 
        super();
        try{
            
            conexion = this.obtenerConexion();
            usuId = usuVO.getUsuId();
            usuLogin = usuVO.getUsuLogin();
            usuPassword= usuVO.getUsuPassword();
   
            
        }catch (Exception e){
            //categorizar el nivel del error
            Logger.getLogger(UsuarioDAO.class.getName()).log (Level.SEVERE,null, e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {
        try {
            //Update usuario set usuLogin =?, usuPassword=? where usuId=?;
        sql="insert into usuario values (null,?,?)";
        //conexion por el puente
        puente = conexion.prepareStatement(sql);
        //Por el puente mandar variables
        puente.setString(1, usuLogin);
        puente.setString(2, usuPassword);
        //puente.setString(3, usuId);
        
        //Actualizar base de datos al insertar, solo cambia al momento de consultar
        //iniciar sesion mensajero = puente.executeQuery();
        puente.executeUpdate();
        operaciones = true;
        }catch (SQLException e){
          Logger.getLogger(UsuarioDAO.class.getName()).log (Level.SEVERE,null, e);
        }
        //Si se cumple o no el try, se hace 
        finally{
            try{
                this.cerrarConexion();
            }catch(SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log (Level.SEVERE,null, e);
            }
    }
        //retornar operacion falsa
        return operaciones;
    }
    @Override
    public boolean actualizarRegistro() {
    try{
    sql ="update usuario set usuLogin=? and usuPassword=? where usuid=?";
    puente = conexion.prepareStatement(sql);
    puente.setString(1, usuLogin);
    puente.setString(2, usuPassword);
    puente.setString(3, usuId);

    puente.executeQuery();
    operaciones = true;
    
    }catch (SQLException e){
    Logger.getLogger(UsuarioDAO.class.getName()).log (Level.SEVERE,null, e);
    }finally{
      try{
       this.cerrarConexion();
            }catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log (Level.SEVERE,null, e);
            }
    }
return operaciones;    
}
    

}

