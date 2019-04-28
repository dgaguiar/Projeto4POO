<%-- 
    Document   : teste
    Created on : 26/04/2019, 20:18:24
    Author     : thiag
--%>


<%@page import="newpackage.Usuarios"%>
<%@page import="newpackage.BD"%>
<%@page import="newpackage.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIZ - FATEC PG </title>
    </head>
    <body>
        <h1>QUIZ</h1>
        <table style="align:fixed center;">
        <form action="index.jsp">
            <%for(Question q: BD.getTestes()){%>
            <tr><td><h3><%=q.getQuestoes()%></h3></td></tr>
               <%for(String alternativa: q.getAlternativas()){%>
               <tr><td><h4><input type="radio" name="<%=q.getQuestoes()%>" value="<%=alternativa%>"/>
                           <%=alternativa%> </h4></td></tr>
            <%}%>
            <%}%>
               </table> 
            <input type="submit" name="TESTE" value="Enviar"/>
        </form>
           
    </body>
</html>
