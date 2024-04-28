<%-- 
    Document   : CC
    Created on : Dec 5, 2023, 1:53:26 AM
    Author     : sayo1
--%>

<%@page import="uabc.fiad.models.Paciente"%>
<%@page import="uabc.fiad.models.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    <title>CC</title>
    <!-- Agrega aquí tus enlaces a CSS, Bootstrap u otros estilos si es necesario -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">

    </head>

   

    <body class="grid-container">
        <div class="meditecLogo">
            <img src="img/meditec.png" alt=""/>
        </div>
        <div class="doctoresMh">
            <img src="img/imgDoctores.png" alt=""/>
        </div>
        <div class="contenedorDos">
            <div class="seleccion">
                <div class="cuentaM">
                    <h1>Solicitud de Cita</h1>
                </div>
                <div class="logoM">
                    <i class="fas fa-user-md"></i>
                </div>

        <main class="main">
            <div class="main_container">
              

                <%-- Obtener la cita del atributo --%>
                <% Cita cita = (Cita) request.getAttribute("cita");%>

                <!-- Mostrar los datos de la cita -->
                <div>
                    <p class="detail_label">Nombre del Paciente:</p>
                    <p class="detail_value"> <%= cita.getNombrePaciente()%></p>
                    
                     <p class="detail_label">Apellido Paterno:</p>
                     <p class="detail_value"> <%= cita.getApPat()%></p>
                     
                      <p class="detail_label">Apellido Materno:</p>
                    <p class="detail_value"> <%= cita.getApMat()%></p>
                    
                     <p class="detail_label">Motivo:</p>
                    <p class="detail_value"> <%= cita.getMotivo()%></p>

                    <p class="detail_label">Fecha de la Cita:</p>
                    <p class="detail_value"> <%= cita.getFecha()%></p>

                    <p class="detail_label">Hora de la Cita:</p>
                    <p class="detail_value"><%= cita.getHora()%></p>
                </div>

                <div class="buttons">
                    <a href="menuP.jsp" class="button">Regresar al menú</a>
                    <a href="citasP.jsp" class="button">Solicitar otra cita</a>
                    <a href="#">Descargar comprobante</a>
                </div>
            </div>
        </main>
    </body>
</html>
