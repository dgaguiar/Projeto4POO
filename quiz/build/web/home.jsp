<%-- 
    Document   : home
    Created on : 27/04/2019, 11:07:56
    Author     : thiag
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.BD"%>
<%@page import="newpackage.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style type="text/css">
            body{
               
                background-color:#EEEEE0;
            }
            
            div#logar{
                
                width: 25%;
                margin: 0 auto;
                    
            }
            
            table#ranking{
                width:40%;
                margin: 0 auto;
                text-align:center;
                border-collapse: collapse;
            }
            
            table#textRanking{
                width:100%;
                margin: 0 auto;
                text-align:center;
                text-align: center;
            }
            
        </style>
        
    </head>
    <body>
        <table>
            <tr><td><h1>Bem - Vindo ao nosso Quiz</h1> </td></tr>            
        </table> 
        <hr/>
        <table>
            <tr><td><h3>Teste seus conhecimentos matemáticos !</h3> </td></tr> 
            <tr><td><h4> Digite seu nome e efeture o teste!</h4> </td></tr>
        </table> 
        
        <div id="logar">
            <%@include file="login.jsp" %>
        </div>
        <hr/>
        
        <table id="textRanking"><tr><td><h3>Ranking</h3></td></tr></table>
        
        <table id="ranking" border="1">
            <tr><td>Usuário</td><td>Nota</td></tr>
            <tr><td></td><td></td></tr>
                
            <tr>
        </table>        
    </body>
</html> 