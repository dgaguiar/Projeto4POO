<%-- 
    Document   : index
    Created on : 26/04/2019, 20:29:55
    Author     : thiag
--%>

<%@page import="java.util.List"%>
<%@page import="newpackage.BD"%>
<%@page import="newpackage.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%
      String usuario = (String) session.getAttribute("Usuario");
      if(usuario == null){
           response.sendRedirect("login.jsp");
      }
%>
<%    
    
 double nota = 0.0;
    if(request.getParameter("TESTE")!=null){
    int respostaCorreta= 0;
    for(Question q: BD.getTestes()){
        String respostaUsuario = request.getParameter(q.getQuestoes());
        if(respostaUsuario !=null){
        if(q.getRespostas().equals(respostaUsuario)){
            respostaCorreta++;
        }
    }
    }
    nota = (double)respostaCorreta / (double)BD.getTestes().size();
    nota *=100;
 
   
}

    BD.cadastraNotas(usuario, nota);

    List<Double> notas = BD.getNotas(usuario);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIZ - FATEC</title>
        <style type="text/css">
            table{
                width:40%;
                margin: 0 auto;
                text-align:center;
                border-collapse: collapse;
            } 
            
        </style>
    </head>
    <body>
          
        <h4 style="text-align: center; font-family: sans-serif;"><a href="perfil.jsp">PERFIL</a></h4>
       
        <%if(request.getParameter("TESTE")==null){%>
        <h1>BEM VINDO, <%=usuario%>.</h1>
        <h3><a href="teste.jsp"> FAÇA SEU TESTE </a>
            <table border = 1>
            <% for(int i = 0; i < notas.size(); i++) {%>
            <tr><td><h3><%=i+1%>° Teste concluido!</h3></td>
                <td><h3>, sua nota foi : <%=notas.get(i) %>/100</h3></td></tr>
             <% } %>
            </table>
            <%}else{%>
            <table>
                <tr><td><h3>Teste concluido!</td></tr></h3>
            <tr><td><h1>Sua nota foi <%=nota%>/100</td></tr></h1>
            </table>
            
            <h3 style="text-align: center; font-family: sans-serif;">Quer fazer o teste novamente? Clique <a href="teste.jsp">aqui</a>.</h3>
             
            <h3 style="text-align: center; font-family: sans-serif;"><a href="deslogar.jsp">SAIR</a></h3>
                <%}%>
                
    </body>
</html>
