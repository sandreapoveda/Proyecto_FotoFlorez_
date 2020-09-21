/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

public class ComponenteVO {

    public ComponenteVO() {
    }

    private String id_componente, nombre_componente;

    public ComponenteVO(String id_componente, String nombre_componente) {
        this.id_componente = id_componente;
        this.nombre_componente = nombre_componente;

    }

    public String getId_componente() {
        return id_componente;
    }

    public void setId_componente(String id_componente) {
        this.id_componente = id_componente;
    }
    
    public String getNombre_componente() {
        return nombre_componente;
    }

    public void setNombre_componente(String nombre_componente) {
        this.nombre_componente = nombre_componente;
    }

    
}
