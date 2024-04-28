<%-- 
    Document   : registroMedico
    Created on : 27 nov 2023, 19:29:21
    Author     : kevin
--%>

<%@page import="uabc.fiad.models.Medico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Medico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
        <script src="SRC/JS/registrar.js"></script>

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
            height: 660px;
            position: relative;
            top: -400px;
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
        .botonRegresarDos{
            top: -2px;
            position: relative;
            left: 300px;
            background-color: #C0C9CA;
            color: #fff;
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 5px 5px 5px #888;
            transition: background-color 0.3s;
            cursor: pointer;
        }
        .botonRegresarDos:hover{
            background-color: rgba(21,67,96,1);
        }

        .fa-user-md{
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

        .form_container {
            display: flex;
            flex-direction: column;
            max-width: 600px; /* Ajusta el ancho máximo del formulario según tus necesidades */
            position: relative;
            top: -50px;
            right: 140px;
        }

        label {
            margin-bottom: 5px; /* Espacio entre las etiquetas y los inputs */
        }

        input {
            margin-bottom: 15px; /* Espacio entre los campos de entrada */
        }
        .fa-arrow-left{
            font-size: 20px;
        }
        .fa-check{
            font-size: 25px;
        }
        .enviarRM{
            top: 50px;
            position: relative;
            background-color: #42CF1F;
            color: #fff;
            border: none;
            padding: 10px 10px;
            border-radius: 5px;
            font-size: 16px;
            box-shadow: 5px 5px 5px #888;
            transition: background-color 0.3s;
            cursor: pointer;
        }
        .enviarRM:hover{
            background-color: rgba(21,67,96,1);
        }
        .logoM{
            position: relative;
            left: 170px;
            top: 200px;
        }
        .fa-user-md{
            font-size: 100px;
        }
        .cuentaM{
            position: relative;
            top: 50px;
        }
        input:focus {
            outline: none;
            border-color: #5b9dd9;
            box-shadow: 0 0 5px rgba(91, 157, 217, 0.5);

        }

    </style>
    <script>
        function regresarRegistro() {
            window.location.href = 'registro.jsp';
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
                <div class="cuentaM">
                    <h1>CUENTA MÉDICO</h1>
                </div>
                <div class="logoM">
                    <i class="fas fa-user-md"></i>
                </div>
                <form action="serveletMedico" method="post" class="form_container">
                <input type="hidden" name="action" value="register">
                    <label for="nombre">Nombre completo:</label>
                    <input type="text" id="nombre" name="nombre" required="required">

                    <label for="cedula">Edad:</label>
                    <input  type="number" id="edad" name="edad" required="required">

                    <label for="cedula">N° de Celula:</label>
                    <input type="text" id="cedula" name="cedula" required="required">

                    <label for="curp">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" required="required">

                    <label for="email">Correo Electronico:</label>
                    <input type="email" id="email" name="email" required="required">

                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required="required">

                    <label for="passwordConfirmar">Intruzca de nuevo la contraseña:</label>
                    <input type="password" id="passwordConfirma" name="passwordConfirma" required="required">

                    <input type="submit" value="Registrarse" class="enviarRM">
                    <button class="botonRegresarDos" onclick="regresarRegistro()">Atrás <i class="fas fa-arrow-left"></i></button>
                   
                    
                   
                        
                        

                </form>
            </div>
        </div>
    </body>

</html>


