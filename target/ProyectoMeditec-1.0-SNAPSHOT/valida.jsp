<%-- 
    Document   : valida
    Created on : 11 nov 2023, 10:28:29
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String d_user = request.getParameter("clave");
            String d_pass = request.getParameter("pwd");
            if (d_user != null) {
                out.println("Usuario recibido " + d_user);
                if (d_user.equals("david") && d_pass.equals("david123")) {
                    out.println("Usuario valido");
                } else {
                    out.println("Usuario o contraseña incorrecta");
                }

            }


        %>
    </body>
</html>
