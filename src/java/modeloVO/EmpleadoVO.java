/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

public class EmpleadoVO {
    
    public EmpleadoVO() {
    }
   
    private String id_empleado, usuId, tipo_identificacion, n_identificacion, nombre_emp, apellido_emp;    
    
   
    
     public EmpleadoVO(String id_empleado, String usuId, String tipo_identificacion, String n_identificacion, String nombre_emp, String apellido_emp){
        this.id_empleado = id_empleado;
        this.usuId = usuId;
        this.tipo_identificacion = tipo_identificacion;
        this.n_identificacion = n_identificacion;
        this.nombre_emp = nombre_emp;
        this.apellido_emp = apellido_emp;
    }
    

    public String getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(String id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getusuId() {
        return usuId;
    }

    public void setusuId(String usuId) {
        this.usuId = usuId;
    }

    public String getTipo_identificacion() {
        return tipo_identificacion;
    }

    public void setTipo_identificacion(String tipo_identificacion) {
        this.tipo_identificacion = tipo_identificacion;
    }

    public String getN_identificacion() {
        return n_identificacion;
    }

    public void setN_identificacion(String n_identificacion) {
        this.n_identificacion = n_identificacion;
    }

    public String getNombre_emp() {
        return nombre_emp;
    }

    public void setNombre_emp(String nombre_emp) {
        this.nombre_emp = nombre_emp;
    }

    public String getApellido_emp() {
        return apellido_emp;
    }

    public void setApellido_emp(String apellido_emp) {
        this.apellido_emp = apellido_emp;
    }
    
   
    
}

