<%-- 
    Document   : Citas
    Created on : Nov 27, 2023, 9:08:45 PM
    Author     : sayo1
--%>
<%@page import="uabc.fiad.models.Paciente"%>
<%@page import="java.util.List"%>
<%@page import="uabc.fiad.models.Hora"%>
<%@page import="uabc.fiad.models.Fecha"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="es">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
       
        <title>JSP Page</title>
    </head>


    <style>
        body{
            font-family: 'PT Sans', sans-serif;
             margin: 0;
                padding: 0;
                background-color: #f0f0f0;
        }
        .seleccion{
            background: #fff;
            width: 600px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: auto;/*centra horizontalmente*/
            position: relative;
            top: -290px;
        }
        .contenedorDos{
            display: flex;
            justify-content: center; /* Centra horizontalmente */
            align-items: center; /* Centra verticalmente */
            min-height: 100vh; /* Ocupa el 100% de la altura del viewport */
        }
        .doctoresMh img{
            
            width:  300px;
            height: 150px;
            margin: 10px;
            padding: 5px;
            position: relative;
            top: -150px;
            right: -1150px;
        }
        .meditecLogo img {
            width:  300px;
            height: 150px;
            margin: 10px;
            padding: 5px;
            position: relative;
            top: 20px;
            left: 0px;
        }
        .logoM{
            position: relative;
            right: 150px;
            top: -90px;
            color: #007bff;
            font-size: 36px;
        }
        .fa-user-md{
            font-size: 80px;

        }
        .menu-btn {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

        .btn-line {
            width: 30px;
            height: 3px;
            background-color: #333;
            margin: 6px 0;
        }

        .menu {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #2222DA;
            padding: 15px;
            /*border-radius: 10px;*/
            position: relative;
            top: -250px;
            padding: 10px 10px;
            /*box-shadow: 5px 5px 5px #888;*/
            width: 100%;
        }
        .menu ul {
            list-style: none;
            padding: 0;
            display: flex;
        }

        .menu li {
            margin: 0 15px;
        }

        .menu a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s;
        }

        .menu a:hover {
            color: #FFD700;
        }
        .cuentaM{
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            position: relative;
            top: 50px;
        }
        .button{
            top: -30px;
            position: relative;
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 5px 5px 5px #888;
            transition: background-color 0.3s;
            cursor: pointer;
            margin: 20px;
        }
        .button:hover{
            background-color: rgba(21,67,96,1);
        }

        .modal{
            display: none;
        }
        .editar{
            padding: 10px;
            margin: 10px;

        }

        #cerrar{
            margin-left: 10px;
            background-color: red;
            color: white;
            border: none;
            cursor: pointer;
            right: 10px;
            border-radius: 5px;

        }
        
        /* Estilos para el formulario */
        .form_container {
            display: grid;
            grid-template-columns: 1fr;
            grid-gap: 15px;
        }

        label {
            font-size: 16px;
            color: #333;
            margin-bottom: 5px;
        }

        select, input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            border: none;
            padding: 12px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .boton_cancelar {
            display: inline-block;
            background-color: #ccc;
            color: #333;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            padding: 12px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .boton_cancelar:hover {
            background-color: #999;
        }

        /* Otros estilos */
        .meditecLogo img, .doctoresMh img {
            max-width: 100%;
            width: 220px;
            height: auto;
            margin: 10px;
            padding: 5px;
        }

        .doctoresMh {
            margin: 20px;
        }

        /* Media Query para dispositivos pequeños */
        @media (max-width: 768px) {
            .contenedorDos {
                padding: 20px;
            }

            .seleccion {
                width: 100%;
            }
        }
    </style>
    <body>
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

                <form action="servletCita" method="post" class="form_container">
    
                    <label for="nombrePaciente">Nombre del Paciente:</label>
                    <input type="text" name="nombrePaciente" id="nombrePaciente" required="required">

                    <label for="apellido1">Apellido Paterno:</label>
                    <input type="text" name="apellido1" id="apellido1" required="required">

                    <label for="apellido2">Apellido Materno:</label>
                    <input type="text" name="apellido2" id="apellido2" required="required">

                    <label for="motivo">Motivo de la Cita:</label>
                    <input type="textbox" name="motivo" id="motivo" required="required">

                    <label for="fechaCita">Fecha:</label>
                    <input type="date" name="fechaCita" id="fechaCita" required="required">
                    
                    <label for="hora">Hora:</label>
                    <input type="time" name="horaCita" id="horaCita" required="requiered">
                    
    <input type="submit" value="Enviar">
</form>


                <a href="index.jsp" class="boton_cancelar">Cancelar</a>

            </div>
        </main>
 </body>
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</html>