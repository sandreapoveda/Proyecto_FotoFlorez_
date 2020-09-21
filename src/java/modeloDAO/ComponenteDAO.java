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
import modeloVO.ComponenteVO;
import util.Conexion;
import util.Crud;


/**
 *
 * @author 57350
 */
public class ComponenteDAO extends Conexion implements Crud{
  //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public ComponenteDAO() {
    }
    
    // 
    public boolean operaciones = false;
    private String sql;
    //
    private String id_componente="", nombre_componente="";
    
    public ComponenteDAO(ComponenteVO ComponenteVO){
        //sobrecarga de métodos 
        super();
        try{
            conexion = this.obtenerConexion();
            id_componente = ComponenteVO.getId_componente();
            nombre_componente = ComponenteVO.getNombre_componente();

            
        }catch (Exception e){
            //categorizar el nivel del error
            Logger.getLogger(ComponenteDAO.class.getName()).log (Level.SEVERE,null, e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {

        try {
            sql = "insert into componente values (?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,id_componente );
            puente.setString(2, nombre_componente);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update componente set nombre_componente=? where id_componente=?";
            puente = conexion.prepareStatement(sql);        
            puente.setString(1, nombre_componente);
            puente.setString(2, id_componente);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    public static ComponenteVO consultar(String componente) {

        ComponenteVO comVO = null;
        try {
            Conexion conexBd = new Conexion();
            Connection conexion = conexBd.obtenerConexion();
            String sql = "Select * from componente where id_componente=?";
            PreparedStatement puente = conexion.prepareStatement(sql);
            puente.setString(1, componente);
            ResultSet mensajero = puente.executeQuery();
            while (mensajero.next()) {

                comVO = new ComponenteVO(componente, mensajero.getString(1));
            }

        } catch (SQLException e) {
            Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                Conexion conexBd = new Conexion();
                conexBd.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return comVO;
    }
     public ArrayList<ComponenteVO> listar() {

        ComponenteVO ComVO = null;
        conexion = this.obtenerConexion();
        ArrayList<ComponenteVO> listarComponente = new ArrayList<>();

        try {
            sql = "Select * from componente";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                ComVO = new ComponenteVO(mensajero.getString(1),mensajero.getString(2));

                listarComponente.add(ComVO);
            }

        } catch (Exception e) {
            Logger.getLogger(ComponenteDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listarComponente;

    }

    
}

    
