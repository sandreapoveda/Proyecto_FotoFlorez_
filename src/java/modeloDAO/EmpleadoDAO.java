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
import modeloVO.EmpleadoVO;
import util.Conexion;
import util.Crud;


/**
 *
 * @author 57350
 */
public class EmpleadoDAO extends Conexion implements Crud{
  //declarar objetos y variables
    private Connection conexion = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    public EmpleadoDAO() {
    }
    
    // 
    public boolean operaciones = false;
    private String sql;
    //
    private String id_empleado="", usuId="", tipo_identificacion="",
            n_identificacion="", nombre_emp="", apellido_emp="";
    
    public EmpleadoDAO(EmpleadoVO EmpleadoVO){
        //sobrecarga de métodos 
        super();
        try{
            conexion = this.obtenerConexion();
            id_empleado = EmpleadoVO.getId_empleado();
            usuId = EmpleadoVO.getusuId();
            tipo_identificacion = EmpleadoVO.getTipo_identificacion();
            n_identificacion = EmpleadoVO.getN_identificacion();
            nombre_emp = EmpleadoVO.getNombre_emp();
            apellido_emp= EmpleadoVO.getApellido_emp();
   
            
        }catch (Exception e){
            //categorizar el nivel del error
            Logger.getLogger(EmpleadoDAO.class.getName()).log (Level.SEVERE,null, e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {

        try {
            sql = "insert into empleado values (null,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,usuId );
            puente.setString(2, tipo_identificacion);
            puente.setString(3, n_identificacion);
            puente.setString(4, nombre_emp);
            puente.setString(5, apellido_emp);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update empleado set usuId=?, tipo_identificacion=?,"
                    + " n_identificacion=?, nombre_emp=? , apellido_emp=? where id_empleado=?";
            puente = conexion.prepareStatement(sql);

            puente.setString(1, usuId);
            puente.setString(2, tipo_identificacion);
            puente.setString(3, n_identificacion);
            puente.setString(4, nombre_emp);
            puente.setString(5, apellido_emp);
            puente.setString(6,id_empleado);
            puente.executeUpdate();
            operaciones = true;

        } catch (SQLException e) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operaciones;
    }

    public static EmpleadoVO consultar(String empleado) {

        EmpleadoVO EmpVO = null;
        try {
            Conexion conexBd = new Conexion();
            Connection conexion = conexBd.obtenerConexion();
            String sql = "Select * from empleado where id_empleado=?";
            PreparedStatement puente = conexion.prepareStatement(sql);
            puente.setString(1, empleado);
            ResultSet mensajero = puente.executeQuery();
            while (mensajero.next()) {

                EmpVO = new EmpleadoVO(empleado, mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
            }

        } catch (SQLException e) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                Conexion conexBd = new Conexion();
                conexBd.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return EmpVO;
    }

    public ArrayList<EmpleadoVO> listar() {

        EmpleadoVO EmpVO = null;
        conexion = this.obtenerConexion();
        ArrayList<EmpleadoVO> listarEmpleado = new ArrayList<>();

        try {
            sql = "Select * from empleado";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                EmpVO = new EmpleadoVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6));

                listarEmpleado.add(EmpVO);
            }

        } catch (Exception e) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listarEmpleado;

    }

    
}

    
