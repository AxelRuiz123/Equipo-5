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
        <script>
        function regresarRegistro() {
            window.location.href = 'registro.jsp';
        }

        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("passwordConfirma").value;
            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>

    </head>

    <style>
        body{
            font-family: 'PT Sans', sans-serif;
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
        <img src="img/meditec.png" alt="Meditec Logo"/>
    </div>
    <div class="doctoresMh">
        <img src="img/imgDoctores.png" alt="Imagen Doctores"/>
    </div>
    <div class="contenedorDos">
        <div class="seleccion">
            <div class="cuentaM">
                <h1>CUENTA MÉDICO</h1>
            </div>
            <div class="logoM">
                <i class="fas fa-user-md"></i>
            </div>
            <form action="servletMedico.java" method="post" class="form_container" onsubmit="return validateForm()">
                <input type="hidden" name="action" value="register">
                <label for="nombre">Nombre(s):</label>
                <input type="text" id="nombre" name="nombre" required>
                
                <label for="apellidoPM">Apellido Paterno:</label>
                <input type="text" id="apellidoPM" name="apellidoPM" required>
                
                <label for="apellidoMM">Apellido Materno:</label>
                <input type="text" id="apellidoMM" name="apellidoMM" required>

                <label for="fecha">Fecha de Nacimiento:</label>
                <input type="date" id="fecha" name="fecha" required>

                <label for="cedula">N° de Cédula:</label>
                <input type="number" id="cedula" name="cedula" required>

                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" required>

                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>

                <label for="passwordConfirma">Introduce de nuevo la contraseña:</label>
                <input type="password" id="passwordConfirma" name="passwordConfirma" required>

                <input type="submit" value="Registrarse" class="enviarRM">
                <button type="button" class="botonRegresarDos" onclick="regresarRegistro()">Atrás <i class="fas fa-arrow-left"></i></button>
            </form>
        </div>
    </div>
</body>
</html>