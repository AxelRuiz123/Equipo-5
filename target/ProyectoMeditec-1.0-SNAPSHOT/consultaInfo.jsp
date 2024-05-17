<%-- 
    Document   : consultaInfo
    Created on : 27 nov 2023, 19:13:23
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        .seleccion{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: blue;
            width: 780px;
            height: 800px;
            position: relative;
            top: -200px;
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
            top: -740px;
            position: relative;
            left: 290px;
            background-color: #C0C9CA;
            color: #0b0b0b;
            border: none;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 20px;
            box-shadow: 1px 5px 5px #100;
            transition: background-color 0.3s;
            cursor: pointer;
        }
        .botonRegresar:hover{
            background-color: rgba(21,67,96,1);
        }
        .nosotros{
            text-align: center;
            position: relative;
            top: -120px;
            font-size: 30px;
        }
        .doctoresMh img{
            
            width:  300px;
            height: 150px;
            margin: 10px;
            padding: 5px;
            position: relative;
            top: -180px;
            right: -1150px;
        }
        .meditecLogo img {
            width:  300px;
            height: 150px;
            margin: 10px;
            padding: 5px;
            position: relative;
            top: 0px;
            left: 0px;
        }
        .info{
          text-align: justify;  
          margin: 20px;
        }
    </style>
    <script>
        function pantallaInicio() {
            window.location.href = 'index.jsp';
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
                <div class="nosotros">
                    <h1>Nosotros</h1>
                </div>
                <div class="info">
                    <p>Cada año que pasa nacen millones de personas en todo el mundo, esto hace que todo sea más solicitado (alimento, medio de transporte, viviendas, etc),
                    y no se diga los servicios médicos, los cuales en ocasiones llegan a saturarse de manera drastica, haciendo menos eficiente el mismo
                    y cansando tanto a los médicos como a los pacientes por horas y horas de espera ya sea en la clínica o en el hospital.
                    Adentrandonos en nuestro país (México) el servicio que se tiene en estos días es pésimo y esto no es debido a los profesionistas encargados de esta área,
                    sino es cuestión administrativa la que está fallando y en ocasiones hace que las personas sufran y no obtengan alguna respuesta 
                    en cuanto a su petición.
                    
                    Es por ello que nosotros somos una compañía encargada de agilizar la atención médica y no solo eso, también brindamos una buena comunicación 
                    médico-paciente para que de esta forma se traten temas en especifico de manera más eficiente.
                    Lo anterior se realiza por medio de una aplicación web llamada <b>MEDITEC</b> la cual tiene dos tipos de registros (Cuenta Médico o Paciente)
                    que nos permiten ver diferentes interfaces graficas con diferentes opciones, entre ellas estan:
                    <ol>
                        <p><b>Médico</b></p>
                        <p>Editar perfil</p>
                        <p>Verificar expediente clínico del paciente</p>
                        <p>Ver citas agendadas/Editar citas</p>
                        <p>Sistema de mensaje médico-paciente</p>
                        <p><b>Paciente</b></p>
                        <p>Editar perfil</p>
                        <p>Buscar médicos y ver su información</p>
                        <p>Sistema de mensaje médico-paciente</p>
                    </ol>
                    </p>
                </div>
                <button class="botonRegresar" onclick="pantallaInicio()">Inicio <i class="fas fa-home"></i></button>
            </div>
        </div>
    </body>
</html>
