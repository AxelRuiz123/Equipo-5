<%-- 
    Document   : inicializaP
    Created on : Nov 27, 2023, 4:19:02 PM
    Author     : sayo1
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="uabc.fiad.models.Paciente"%>
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
                    ArrayList<Paciente> u = new ArrayList();
                    // Usuarios2 users = new Usuarios2();
                    u = Paciente.inicializaPaciente();
                    for (Paciente lista : u) {
                        out.println(lista.getCorreo()+ "-" + lista.getNombre() + "<br>");
            }
                } else {
                    out.println("No ha iniciado sesión");
                }
                ArrayList<Paciente> u = new ArrayList();
                // Usuarios2 users = new Usuarios2();
                u = Paciente.inicializaPaciente();
                
            } catch (Exception e) {
                out.println("No ha iniciado sesión");
            }

        %>
    </body>
</html>