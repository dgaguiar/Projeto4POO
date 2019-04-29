/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thiag
 */
public class Usuarios {
    private String usuario;
    private List<Double> notas;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public List<Double> getNotas() {
        return notas;
    }

    public void setNotas(List<Double> notas) {
        this.notas = notas;
    }

    
    private static ArrayList<Usuarios>usuarios;
    public static ArrayList<Usuarios>getUsuarios(){
    usuarios = new ArrayList();
    Usuarios usuario = new Usuarios();
    usuarios.add(usuario);
    return usuarios;
            }
    
}
