<%-- 
    Document   : login
    Created on : 27/04/2019, 08:27:28
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <style type="text/css">
            table{
                
                width:100%;
                
            }
            td{
                font-family: sans-serif;
                font-size: 100%;
                text-align: center;
                padding: 10px;
            }
                     
        </style>
              

        </hr>
    </head>
    <body>
        <table>
        <form action="login.jsp" methord="post">
            <tr><td>Nome</td><br/><td><input type="text" name="Usuario" /><br/></td>
        <td><input type="submit" value="Logar" /></td></tr>
        </form>
         </table>
        <%
            String usuario = request.getParameter("Usuario");
            if(usuario!=null && !usuario.isEmpty()){
                session.setAttribute("Usuario", usuario);
                response.sendRedirect("perfil.jsp");
            }
            
        %>
    </body>
</html>
