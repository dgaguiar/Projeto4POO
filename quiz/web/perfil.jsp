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
        <style type="text/css">
            body{
               
                background-color:#EEEEE0;
            }
            td{
                padding: 0;
            }
            table{
                border-collapse: collapse;
                width:100%; 
                text-align: center;
                background-color: white; 
            }
            h1#bemvindo{
                font-family: sans-serif;
                font-size: 30pt;
                text-align: center;
            }
            
            table#notas{
                width:50%;
                margin: 0 auto;
                border-collapse: collapse;
            }
            
        </style>
    </head>
    <body>
         <h1 id="bemvindo">BEM VINDO, <%=usuario%>.</h1>
         <hr/>
         
         <h4 style="text-align: center; font-family: sans-serif;"><a href="teste.jsp">  IR PARA TESTE </a></h4>
             <br/>
             <% if (BD.getNotas(usuario)!=null){ %>
             <h2 style="text-align: center; font-family: sans-serif;">Suas notas</h2>
              <table id="notas"border =1>
                 <tr><td>Teste</td><td>Nota</td></tr>
             <% for(int i = 0; i < notas.size(); i++) {%>
             <tr><td><h3> <%=i+1%> ° </h3></td>
                 <td><h4> <%=notas.get(i)%> % </h4></td>
             </tr>
                  <% } %>
             </table> 
             <% } else { %>
             <h3 style="text-align: center; font-family: sans-serif;">Usuário não realizou testes anteriores</h3>
             
             <% }%>
             
             <h4 style="text-align: center; font-family: sans-serif;"><a href="home.jsp"> Sair</a></h4>
    </body>
</html>
