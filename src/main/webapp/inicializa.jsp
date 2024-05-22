<%-- 
    Document   : inicializa
    Created on : 11 nov 2023, 10:28:43
    Author     : kevin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uabc.fiad.models.Medico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try {
                
                if (session.getAttribute("nombre") != null) {
                    ArrayList<Medico> u = new ArrayList();
                    // Usuarios2 users = new Usuarios2();
                    u = Medico.inicializaMedico();
                    for (Medico lista : u) {
                        out.println(lista.getCorreo()+ "-" + lista.getNombre() + "<br>");
            }
                } else {
                    out.println("No ha iniciado sesión");
                }
                ArrayList<Medico> u = new ArrayList();
                // Usuarios2 users = new Usuarios2();
                u = Medico.inicializaMedico();
                
            } catch (Exception e) {
                out.println("No ha iniciado sesión");
            }

        %>
    </body>
</html>
