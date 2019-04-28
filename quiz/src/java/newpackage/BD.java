/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author thiag
 */
public class BD {
   
   private static HashMap<String,List<Double>> notas = new HashMap<>();
   
    public static ArrayList<Question> getTestes(){ 
        ArrayList<Usuarios> nome = new ArrayList<>();
        
        ArrayList<Question> quiz = new ArrayList<>();
        quiz.add(new Question("1) 1+1","2",new String[]{"1","2","3"}));
        quiz.add(new Question("2) 1+2","3",new String[]{"1","2","3"}));
        quiz.add(new Question("3) 1+3","4",new String[]{"1","2","4"}));
        quiz.add(new Question("4) 1+4","5",new String[]{"1","2","5"}));
        quiz.add(new Question("5) 1+5","6",new String[]{"1","2","6"}));
        quiz.add(new Question("6) 5+5","10",new String[]{"10","2","6"}));
        quiz.add(new Question("7) 2+5","7",new String[]{"7","8","6"}));
        quiz.add(new Question("8) 4+5","9",new String[]{"9","4","6"}));
        quiz.add(new Question("9) 1+8","9",new String[]{"2","9","6"}));
        quiz.add(new Question("10) 5+7","11",new String[]{"12","13","11"}));
 
    return quiz;
    }   
    
    //Cadastra as notas e armazena vinculando com o nome do usuario
    public static void cadastraNotas(String nome, Double nota){
        
         if(notas.containsKey(nome)){
            notas.get(nome).add(nota);
            
            notas.get(nome).forEach( s -> System.out.println("Nome: " + nome + "Notas: " + s));
            
            
        }else{
            List<Double> notas1 = new ArrayList<>(); 
            notas1.add(nota);
            notas.put(nome, notas1);
        }
        
         
       
    }
    
     public static List<Double> getNotas(String nome){
         
        return notas.get(nome);
        
    }
     
    private static ArrayList<Usuarios> Usuarios;
    private static ArrayList<Question> TestesFeitos;
    private static ArrayList<Usuarios> getPessoa() {
        if (Usuarios == null) {
            Usuarios = new ArrayList<>();
        }
        return Usuarios;
    }
    //cria um Array para teste feito
    private static ArrayList<Question> getTestesFeitos(){
        if (TestesFeitos == null){
            TestesFeitos = new ArrayList<>();
        }
        return TestesFeitos;
    }
    //adiciona usuário , caso não esteja salvo
    public static boolean addUsuario(Usuarios usuario){
        for(Usuarios u: getPessoa()){
            if(u.getUsuario().equals(usuario.getUsuario()))
                return false;
        }
        BD.getPessoa().add(usuario);
        return true;
    }
    
    public static boolean atualizarMediaUser(String nomeUsuario, double acertosQuiz){
        int i = 0;
        for(Usuarios u: getPessoa()){
            if(u.getUsuario().equals(nomeUsuario)){
                double mediaNota = 0;
                if(u.getNotas()== 0){
                    mediaNota = acertosQuiz;
                }else{
                    mediaNota = (u.getNotas() + acertosQuiz)/2;
                }
                u.setNotas(mediaNota);
                BD.getPessoa().remove(i);
                BD.getPessoa().add(i, u);
                return true;
            }
            i++;
        }
        return false;
    }
    public static double obterMediaUsuario(String nomeUsuario){
        for(Usuarios u : getPessoa()){
            if(u.getUsuario().equals(nomeUsuario)){
                return u. getNotas();
            }
        }
        return -1;
    }
    public static boolean addTesteFeito(Question quiz){
        BD.getTestesFeitos().add(quiz);
        return true;
    }
    public static Usuarios getUsuario(int i){
        return BD.getPessoa().get(i);
    }
    public static int totalUsuarios(){
        return BD.getPessoa().size();
    }
    public static Question getTestefeito(int i){
        return BD.getTestesFeitos().get(i);
    }
    public static int totalTestesFeitos(){
        return BD.getTestesFeitos().size();
    }
    
}
