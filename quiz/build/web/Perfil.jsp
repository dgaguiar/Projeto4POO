<%-- 
    Document   : Perfil
    Created on : 27/04/2019, 22:23:51
    Author     : Daianne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.BD"%>
<%@page import="newpackage.Question"%>

<%    
    
      String usuario = (String) session.getAttribute("Usuario");
      if(usuario == null){
           response.sendRedirect("login.jsp");
      }
      
    List<Double> notas = BD.getNotas(usuario);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <style>
            td{
                padding: 0;
            }
            
        </style>
    </head>
    <body>
         <h1>BEM VINDO, <%=usuario%>.</h1>
         <h3><a href="teste.jsp"> FAÇA SEU TESTE </a></h3>
             <br/>
             
             <table border =1 style=" border-collapse: collapse;width:100%; text-align: center; " >
                 <tr><td> Teste </td><td>Nota</td></tr>
             <% for(int i = 0; i < notas.size(); i++) {%>
             <tr><td><h3><%=i+1%>° </h3></td>
             <td><h4> <%=notas.get(i) %></h4></td></tr>
                  <% } %>
             </table>
             <h2><a href="login.jsp"> Sair</a></h2>
    </body>
</html>
