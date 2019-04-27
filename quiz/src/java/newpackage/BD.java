/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.ArrayList;

/**
 *
 * @author thiag
 */
public class BD {
    
    public static ArrayList<Qestion> getTestes(){    
    ArrayList<Qestion> quiz = new ArrayList<>();
    quiz.add(new Qestion("1+1","2",new String[]{"1","2","3"}));
    quiz.add(new Qestion("1+2","3",new String[]{"1","2","3"}));
    quiz.add(new Qestion("1+3","4",new String[]{"1","2","4"}));
    quiz.add(new Qestion("1+4","5",new String[]{"1","2","5"}));
    quiz.add(new Qestion("1+5","6",new String[]{"1","2","6"}));
 
    return quiz;
}   
    
}
