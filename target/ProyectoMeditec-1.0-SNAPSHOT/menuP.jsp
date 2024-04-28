<%-- 
    Document   : menuP
    Created on : Nov 26, 2023, 10:25:52 PM
    Author     : sayo1
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menú de Cabecera</title>
    <!-- Agrega aquí tus enlaces a CSS, Bootstrap u otros estilos si es necesario -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">

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

<header>
    <nav>
        <ul>
            <li><a href="menuP.jsp">Inicio</a></li>
            <li><a href="#" onclick="mostrarNotificaciones()">Notificaciones</a></li>
            <li><a href="#" onclick="mostrarModales()">Servicios</a></li>
            <li><a href="citasP.jsp">Citas</a></li>
            <li><a href="logout">Cerrar Sesión</a></li>
        </ul>
    </nav>
</header>

<div id="modalNotificaciones" style="display:none;">
    <p>Revisar resultados médicos.</p>
    <button id="cerrarModal" onclick="cerrarModal()">Cerrar</button>
</div>

<script>
    function mostrarNotificaciones() {
        // Muestra la ventana modal
        document.getElementById('modalNotificaciones').style.display = 'block';
    }
    function cerrarModal() {
        // Cierra la ventana modal
        document.getElementById('modalNotificaciones').style.display = 'none';
    }
</script>


<!-- Primer Modal -->
<div id="modal1" class="modal">
    <div class="modal-contenido">
        <span class="cerrar" onclick="cerrarModal1()">&times;</span>
                <h3>Le brindamos los siguientes servicios:</h3>
                <br>
                    <div class="servicio_main">
                        <img src="img/AtencionMedica.jpg" alt="Imagen1" class="imagen_main"/>
                        <h3 class="main_title">Agilizacion de atencion Medica</h3>
                       <ul class="lista_main">
                            <li>Reducción de tiempos de espera en clínicas y hospitales.</li>
                            <li>Programación de citas médicas de manera eficiente.</li>
                            <li>Gestión de turnos y horarios para evitar saturación.</li>
                       </ul>
                        <br>
                        <img src="img/CMedico-Paciente.jpg" alt="Imagen2" class="imagen_main"/>
                        <h3 class="main_title">Comunicacion Medico-Paciente</h3>
                       <ul class="lista_main">
                         <li>  Facilitación de la comunicación entre médicos y pacientes.</li>
                         <li>   Acceso a información médica y resultados de manera rápida y segura.</li>
                        <li>    Posibilidad de enviar consultas o preguntas a los profesionales de la salud.</li>
                       </ul>
                        <br>
                    </div>
</div>
</div>
<!-- Segundo Modal -->
<div id="modal2" class="modal">
    <div class="modal-contenido">
        <span class="cerrar" onclick="cerrarModal2()">&times;</span>
         <h3> Tambien prestamos servicios como:</h3>
          <br>
              <div class="servicio_main">
                     <img src="img/EAdministrativa.jpg" alt="Imagen3" class="imagen_main"/>
                        <h3 class="main_title">Eficiencia Administrativa</h3>
                       <ul class="lista_main">
                          <li> Optimización de procesos administrativos en el ámbito médico.</li>
                           <li> Mejora en la gestión de recursos y servicios médicos.</li>
                           <li> Notificaciones de resultados médicos disponibles.</li>
                       </ul>
                        <br>
                        <img src="img/Registros.jpg" alt="Imagen4" class="imagen_main"/>
                        <h3 class="main_title">Registros Diferenciados</h3>
                       <ul class="lista_main">
                         <li>  Tipos de registros distintos para médicos y pacientes.</li>
                         <li> Interfaces gráficas personalizadas para cada tipo de usuario.</li>
                       </ul>
                        <br>
                    </div>
    </div>
</div>

<script>
  function mostrarModales() {
    // Mostrar el primer modal
    document.getElementById('modal1').style.display = 'block';

    // Mostrar el segundo modal después de un retraso (puedes ajustar el tiempo según tus necesidades)
    setTimeout(function() {
        document.getElementById('modal2').style.display = 'block';
    }, 10000); // 10000 milisegundos (10 segundos) de retraso
}

function cerrarModal1() {
    document.getElementById('modal1').style.display = 'none';
}

function cerrarModal2() {
    document.getElementById('modal2').style.display = 'none';
}

</script>

<div class="meditecLogo">
    <img src="img/meditec.png" alt=""/>
</div>
<div class="doctoresMh">
    <img src="img/imgDoctores.png" alt=""/>
</div>
    <div class="contenedorDos">
            <div class="seleccion">
                <div class="cuentaM">
                    <h1>BIENVENIDO(A)</h1>
                </div>
                <div class="logoM">
                    <i class="fas fa-user-md"></i>
                </div>
                <%
                    try {
                        String nombre = (String) session.getAttribute("nombre");

                        if (!nombre.equals("") || nombre != null) {
                            out.println(nombre);
                        }
                %>
                <br><!-- Es un espacio del texto hacia los botones -->
               
                <%
                    } catch (Exception e) {
                        
                    }


                %>
                <button class="button" ><a href="citasP.jsp">Solicitar Cita</a></button>
                <button class="button" ><a href="InfoP.jsp">Consulta de info de familiares</a></button>
                <button class="button" ><a href="resultadosMedicosP.jsp">Resultados de Estudios</a></button>
            </div>
        </div>

<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</body>
</html>