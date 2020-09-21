/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author sharo
 */
public class ServicioVO {
    
    public ServicioVO() {
    }
    private String id_servicio, tipo_catalogo, descripcion_servicio;

    public ServicioVO(String id_servicio, String tipo_catalogo, String descripcion_servicio) {
        this.id_servicio = id_servicio;
        this.tipo_catalogo = tipo_catalogo;
        this.descripcion_servicio = descripcion_servicio;
    }

    public String getId_servicio() {
        return id_servicio;
    }

    public void setId_servicio(String id_servicio) {
        this.id_servicio = id_servicio;
    }

    public String getTipo_catalogo() {
        return tipo_catalogo;
    }

    public void setTipo_catalogo(String tipo_catalogo) {
        this.tipo_catalogo = tipo_catalogo;
    }

    public String getDescripcion_servicio() {
        return descripcion_servicio;
    }

    public void setDescripcion_servicio(String descripcion_servicio) {
        this.descripcion_servicio = descripcion_servicio;
    }
    
    
    
    
}
