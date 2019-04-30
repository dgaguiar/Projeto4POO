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
 * @author Daianne
 */
public class Torneio {
    private static String nome;
    private static Double pontos;
    private static int rodada;
    
    public static ArrayList<Torneio> ranking = new ArrayList<Torneio>();   
    
   

    public static String getNome() {
        return nome;
    }

    public static void setNome(String nome) {
        Torneio.nome = nome;
    }

    public static Double getPontos() {
        return pontos;
    }

    public static void setPontos(Double pontos) {
        Torneio.pontos = pontos;
    }

    public static int getRodada() {
        return rodada;
    }

    public static void setRodada(int rodada) {
        Torneio.rodada = rodada;
    }
   
     public List<Torneio> getRanking() {
        return ranking;
    }

    public  void setRanking(Torneio pontos) {
        ranking.add(pontos);
    }

    private void setName(String nome) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
