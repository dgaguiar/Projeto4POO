/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author thiag
 */
public class Question {
    private String questoes;
    private String respostas;
    private String alternativas[];

    public String getQuestoes() {
        return questoes;
    }

    public void setQuestoes(String questoes) {
        this.questoes = questoes;
    }

    public String getRespostas() {
        return respostas;
    }

    public void setRespostas(String respostas) {
        this.respostas = respostas;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }
    public Question(String questoes, String respostas, String[] alternativas) {
        this.questoes = questoes;
        this.respostas = respostas;
        this.alternativas = alternativas;
    }
}