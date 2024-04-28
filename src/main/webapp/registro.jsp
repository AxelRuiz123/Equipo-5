<%-- 
    Document   : registro
    Created on : 27 nov 2023, 19:27:36
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="es">
        <title>Registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">


    </head>

    <style>
        body{
            font-family: 'PT Sans', sans-serif;
        }
        img{
            max-width: 100%;
            width:  220px;
            height: 100px;
            margin: 10px;
            padding: 5px;
            position: relative;
            top: 10px;

        }
        .seleccion{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: blue;
            width: 780px;
            height: 500px;
            position: relative;
            top: -450px;
            background-color: rgba(233, 255, 254, 1); /* Color con opacidad */
            border-radius: 10px;

        }
        .contenedorDos{
            display: flex;
            justify-content: center; /* Centra horizontalmente */
            align-items: center; /* Centra verticalmente */
            height: 100vh; /* Ocupa el 100% de la altura del viewport */
        }
        .button{
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 15px 25px;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            background-color: #2980b9;
            transition: background-color 0.3s;
            cursor: pointer;
            margin: 30px;
            box-shadow: 5px 5px 5px #888;
            position: relative;
            top: -50px;
        }
        .button i{
            margin-left: 20px;
        }
        .button:hover{
            background-color: rgba(21,67,96,1);
        }
        .botonRegresar{
            top: -150px;
            position: relative;
            left: 300px;
            background-color: #C0C9CA;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 5px 5px 5px #888;
            transition: background-color 0.3s;
            cursor: pointer;
        }
        .botonRegresar:hover{
            background-color: rgba(21,67,96,1);
        }
        .medicoPaciente{
            text-align: center;

        }
        .fa-user-md{
            font-size: 25px;
        }
        .fa-user{
            font-size: 25px;
        }
        .doctoresMh{
            max-width: 100%;
            width:  220px;
            height: 100px;
            margin: 70px;
            padding: 5px;
            position: relative;
            top: -200px;
            left: 1150px;
        }
    </style>
    <script>
        function pantallaInicio() {
            window.location.href = 'index.jsp';
        }
         function registroMedico() {
            window.location.href = 'registroMedico.jsp';
        }
        function registroPaciente() {
            window.location.href = 'registroPaciente.jsp';
        }
    </script>


    <body>
        <div class="meditecLogo">
            <img src="img/meditec.png" alt=""/>
        </div>
        <div class="doctoresMh">
             <img src="img/imgDoctores.png" alt=""/>
        </div>
        <div class="contenedorDos">
            <div class="seleccion">
                <div class="medicoPaciente">
                    <h1>Registrate</h1>
                    <h2>¿Cómo deseas registrarte?</h2>
                </div>
                <button class="botonRegresar" onclick="pantallaInicio()">Inicio <i class="fas fa-home"></i></button>
                <button class="button" onclick="registroMedico()">Médico <i class="fas fa-user-md"></i></button>
                <button class="button" onclick="registroPaciente()">Paciente <i class="fas fa-user"></i></button>
            </div>
        </div>
    </body>
</html>