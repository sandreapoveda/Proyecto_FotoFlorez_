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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.ServicioVO;
import util.Conexion;
import util.Crudd;

/**
 *
 * @author sharo
 */
public class ServicioDAO extends Conexion implements Crudd{
    
  //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public ServicioDAO() {
    }
    
    // 
    public boolean operaciones = false;
    private String sql;
    //
    private String id_servicio="", tipo_catalogo="", descripcion_servicio="";
    
    public ServicioDAO(ServicioVO ServicioVO){
        //sobrecarga de métodos 
        super();
        try{
            conexion = this.obtenerConexion();
            id_servicio = ServicioVO.getId_servicio();
            tipo_catalogo = ServicioVO.getTipo_catalogo();
            descripcion_servicio = ServicioVO.getDescripcion_servicio();
            
        }catch (Exception e){
            //categorizar el nivel del error
            Logger.getLogger(ServicioDAO.class.getName()).log (Level.SEVERE,null, e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {

        try {
            sql = "insert into servicio values (null,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,tipo_catalogo );
            puente.setString(2, descripcion_servicio);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update servicio set tipo_catalogo=?, descripcion_servicio=? where id_servicio=?";
            puente = conexion.prepareStatement(sql);

            puente.setString(1, tipo_catalogo);
            puente.setString(2, descripcion_servicio);
            puente.setString(3, id_servicio);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    public static ServicioVO consultar(String servicio) {

        ServicioVO SerVO = null;
        try {
            Conexion conexBd = new Conexion();
            Connection conexion = conexBd.obtenerConexion();
            String sql = "Select * from servicio where id_servicio=?";
            PreparedStatement puente = conexion.prepareStatement(sql);
            puente.setString(1, servicio);
            ResultSet mensajero = puente.executeQuery();
            while (mensajero.next()) {

                SerVO = new ServicioVO(servicio, mensajero.getString(2), mensajero.getString(3));
            }

        } catch (SQLException e) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                Conexion conexBd = new Conexion();
                conexBd.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return SerVO;
    }

    public ArrayList<ServicioVO> listar() {

        ServicioVO SerVO = null;
        conexion = this.obtenerConexion();
        ArrayList<ServicioVO> listarServicio = new ArrayList<>();

        try {
            sql = "Select * from servicio";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                SerVO = new ServicioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3));
                listarServicio.add(SerVO);
            }

        } catch (Exception e) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listarServicio;

    }

    @Override
    public boolean eliminarRegistro() {
        
        try {
            String sql = "delete from servicio where id_servicio=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_servicio);
            puente.executeUpdate();
            operaciones = true;
      

            } catch (SQLException e) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }
}