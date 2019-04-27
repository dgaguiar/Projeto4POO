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
    </head>
    <body>
        <form action="login.jsp" methord="post">
            Usuario:<br/><input type="text" name="Usuario" /><br/>
            <input type="submit" value="logar" />
        </form>
        
        <%
            String usuario = request.getParameter("Usuario");
            if(usuario!=null && !usuario.isEmpty()){
                session.setAttribute("Usuario", usuario);
                response.sendRedirect("index.jsp");
            }
            
        %>
    </body>
</html>
