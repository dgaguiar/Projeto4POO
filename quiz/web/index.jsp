<%-- 
    Document   : index
    Created on : 26/04/2019, 20:29:55
    Author     : thiag
--%>

<%@page import="newpackage.BD"%>
<%@page import="newpackage.Qestion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    
    
double nota = 0.0;
if(request.getParameter("TESTE")!=null){
    int respostaCorreta= 0;
    for(Qestion q: BD.getTestes()){
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
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String usuario = (String) session.getAttribute("Usuario");
        if(usuario == null){
            response.sendRedirect("login.jsp");
        }
%>
       
        <%if(request.getParameter("TESTE")==null){%>
        <h1>BEM VINDO, <%=usuario%>.</h1>
        <h3><a href="teste.jsp"> FAÇA SEU TESTE </a>
            <%}else{%>
            <h3>Teste concluido</h3>
            <h3>Sua nota foi <%=nota%>/100</h3>
            <h3><a href="teste.jsp">realizar outro teste</a>
            <h3><a href="deslogar.jsp">Deslogar</a>
                <%}%>
                
    </body>
</html>
