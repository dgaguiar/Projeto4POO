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
   
    public static int testsCount = 0;
    public static double testsGradeSum = 0.0;
    public static double lastGrade = 0.0;
    
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
        //se o nome do usuário for igual adicionar a nota a lista de notas do usuário
         if(notas.containsKey(nome)){
            notas.get(nome).add(nota);
            
            notas.get(nome).forEach( s -> System.out.println("Nome: " + nome + "Notas: " + s));
            
            
        }else{ //se não criar uma lista de notas para o usuário
            List<Double> notas1 = new ArrayList<>(); 
            notas1.add(nota);
            notas.put(nome, notas1);
        }       
       
    }
    
    //captura as notas cadastradas em determinado usuário
     public static List<Double> getNotas(String nome){
         
        return notas.get(nome);        
    }
     
      public static double getLastGrade(){
        return BD.lastGrade;
    }
    
    public static double getGradeAverage(){
        return BD.testsGradeSum / (double)BD.testsCount;
    }
     
    
    
     
}
