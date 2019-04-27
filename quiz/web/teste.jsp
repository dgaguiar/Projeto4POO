<%-- 
    Document   : teste
    Created on : 26/04/2019, 20:18:24
    Author     : thiag
--%>


<%@page import="newpackage.BD"%>
<%@page import="newpackage.Qestion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>QUIZ</h1>
        
        <form action="index.jsp">
            <%for(Qestion q: BD.getTestes()){%>
            <h3><%=q.getQuestoes()%></h3>
            <%for(String alternativa: q.getAlternativas()){%>
            <h4><input type="radio" name="<%=q.getQuestoes()%>" value="<%=alternativa%>"/>
            <%=alternativa%> </h4>
            <%}%>
            <%}%>
            <input type="submit" name="TESTE" value="Enviar"/>
        </form>
    </body>
</html>
