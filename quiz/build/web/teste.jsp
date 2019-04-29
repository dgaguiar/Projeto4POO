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
        <style type="text/css">
            
            table{
                width:30%;
                margin: 0 auto;
            }
            td{
                padding: 10px;
                text-align: center;
            }
            #question{
                font-family: sans-serif;
                font-style: normal;
               
            }
            #alternativa{
                
            }
            
            
        </style>
        
    </head>
    <body>
        <h1 style="text-align: center; font-family: sans-serif;">QUIZ</h1>
        <table>
        <form action="index.jsp">
            <%for(Question q: BD.getTestes()){%>
            <tr><td id="question"><b><%=q.getQuestoes()%></b></td></tr>
               <tr><%for(String alternativa: q.getAlternativas()){%>
               <td id="alternativa"><input type="radio" name="<%=q.getQuestoes()%>" value="<%=alternativa%>"/>
                           <%=alternativa%></td>
            <%}%></tr>
            <%}%>
        </table> 
        <table>
            <tr><td><input type="submit" name="TESTE" value="Enviar"/></td></tr>
        </table>
        </form>
           
    </body>
</html>
