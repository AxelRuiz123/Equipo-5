<%-- 
    Document   : ResultadosP
    Created on : Nov 27, 2023, 10:13:16 PM
    Author     : sayo1
--%>

<%@page import="uabc.fiad.models.Paciente"%>
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
        .logoM{
            position: relative;
            right: 90px;
            top: -90px;
        }
        .fa-user-md{
            font-size: 50px;

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
            position: relative;
            top: -30px;
            right: 250px;
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
        
        #modalNotificaciones {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        #modalNotificaciones p {
            margin-bottom: 20px;
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
        
        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
        }

        nav li {
            margin: 0 15px;
        }

        nav a {
            text-decoration: none;
            color: black; /* Cambia el color según tus preferencias */
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #FFD700; /* Cambia el color de resaltado según tus preferencias */
        }
        /* Estilo general para todos los modales */
        .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            max-width: 80%; /* Limita el ancho del modal para que sea responsivo */
        }

        .modal-contenido {
            max-width: 100%; /* Ajusta el ancho máximo del contenido dentro del modal */
        }

        .modal p {
            margin-bottom: 8px;/* Reduce el espacio entre los párrafos */
            font-size: 14px;/*Tamaño de fuente mas pequeño*/
        }   

        /* Ajustes adicionales para mejorar la visualización del contenido */
        .modal .main_title {
            color: #333;
            font-size: 18px; /* Tamaño de fuente más pequeño */
        }

        .modal .imagen_main {
            max-width: 80%;
            height: auto;
            margin-bottom: 10px;
        }

        .modal .lista_main {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .modal .lista_main li {
            margin-bottom: 5px;
            font-size: 14px; /* Tamaño de fuente más pequeño */
        }

        /* Estilo específico para el botón de cerrar en cada modal */
        .modal .cerrar {
            cursor: pointer;
            color: #007bff;
            font-weight: bold;
        }

        /* Ajuste adicional para mejorar la visualización del segundo modal */
        #modal2 .imagen_main {
            max-width: 50%;
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
                <h1>RESULTADOS DE ESTUDIOS DEL PACIENTE:</h1>
            </div>
            <div class="logoM">
                <i class="fas fa-user-md"></i>
            </div>
             <c:set var="paciente" value="${sessionScope.paciente}" />

    <div>
        <p>Nombre: ${paciente.nombre}</p>
        <p>Edad: ${paciente.edad}</p>
        <p>Sexo: ${paciente.sexo}</p>
        <!-- Agrega más detalles según sea necesario -->

        <h2>Resultados Médicos</h2>

        <!-- Lógica para obtener y mostrar resultados médicos -->
        <c:forEach var="resultado" items="${resultadosMedicos}">
            <p>Fecha: ${resultado.fecha}</p>
            <p>Descripción: ${resultado.descripcion}</p>
            <p>Resultado: ${resultado.resultado}</p>
            <hr>
        </c:forEach>
    </div>
        </div>
    </div>

   
 </body>
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</html>