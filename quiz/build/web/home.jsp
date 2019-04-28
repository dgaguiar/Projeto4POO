<%-- 
    Document   : home
    Created on : 27/04/2019, 11:07:56
    Author     : thiag
--%>
<%@page import="newpackage.BD"%>
<%@page import="newpackage.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
        
            
        </style>
        <%@include file="WEB-INF/header.jsp" %>
    </head>
    <body>
        <table>
            <tr><td><h1>Bem - Vindo ao nosso Quiz</h1> </td></tr>            
        </table> 
        <%@include file="login.jsp" %>
        
        <h1>Ranking </h1>
        
        <table border="1" style="text-align:center; border-collapse: collapse;">
            <tr><td>Usuário</td><td>Nota</td></tr>
            <tr><td></td></tr>
                
            <tr>
        </table>        
    </body>
</html> 