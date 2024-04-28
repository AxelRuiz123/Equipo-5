<%-- 
    Document   : index
    Created on : 10 nov 2023, 19:42:24
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="es">
        <title>Inicio Meditec</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="SRC/JS/login.js"></script>
    </head>
    <style>
        *{
            box-sizing: border-box;
        }
        body{
            width: 100%;
            height: 100%;
            background-image: url("img/fondoUno.jpeg");
            margin: 0;
            background-size: cover;
            position: relative;
        }
        .contenedorUno{
            padding: 20px;
            margin: 10% auto;
            text-align: center;
            z-index: 1;
        }
        .contenedorUno::before{
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(233, 255, 254, 0.6); /* Color con opacidad */
            z-index: -1; /* Coloca esta capa detrás del contenido del contenedor */
        }
        .inp{
            padding-bottom: 10px;
        }
        .input{
            border: none;
            outline: none;
            background: none;
            width: 260px;
            margin-top: 40px;
            padding-right: 10px;
            font-size: 15px;
            color: black;
            border-bottom: 1px solid #000000;
        }
        .input:focus {
            border-color: #2980b9; /* Cambia el color del borde al enfocar el input */
            box-shadow: 0 0 5px #2980b9; /* Agrega una sombra al enfocar el input */

        }
        .form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .button{
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 20px 40px;
            border-radius: 5px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 16px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            background-color: #2980b9;
            transition: background-color 0.3s;
            cursor: pointer;
            margin: 20px;
        }
        .button:hover{
            background-color: rgba(21,67,96,1);
        }
        .footer{
            letter-spacing: 0.5px;
            font-size: 14px;
        }
        .registro{
            text-decoration: none;
            color: blue;
        }
        .info{
            position: relative;
            left: 600px;
            top: -150px;
            text-decoration: none;
        }
        @media only screen and (max-width: 767px){
            body{
                font-size: 14px;
                text-align: center;
            }
        }

        
        @media only screen and(min-width: 768) and (max-width: 1023px) and (orientation: landscape){
            body{
                font-size: 16px;
                text-align: center;
            }
        }

       
        @media only screen and(min-width: 1024px){
            body{
                font-size: 18px;
                text-align: center;
            }
        }

        @media print{
            body{
                font-size: 12px;
                text-align: center;
            }
        }
    </style>
    <body>
        <form action="serveletMedico" method="POST"> 
            <div class="contenedorUno">
                <div class="form">
                    <h1 class="title">MEDITEC</h1>
                    <h2>¡Por una atención digna!</h2>
                    <a class="info" href="consultaInfo.jsp">Conócenos</a>
                    <div class="inp">
                        <input type="text" id="medico" name="medico" class="input" placeholder="Usuario" required="required">
                        <i class="fa-solid fa user"></i>
                        <br>
                        <input type="password" id="pwd" name="pwd" class="input" placeholder="Contraseña" required="required">
                        <i class="fa-solid fa lock"></i>
                         
                    </div>
                    <input type="hidden" name="action" value="login">
                    <button class="button">Iniciar Sesión</button>
                    <%
            try {
                String e = request.getParameter("error");
                switch(e){
                    case "1": out.println("<h3>Usuario o contraseña incorrecta</h3>"); break;
                    case "2": out.println("<h3>Sesión finalizada</h3>"); break;
                    case "3": out.println("<h3>Debes iniciar Sesión </h3>"); break;
                }                
            } catch (Exception ex) {

            }
        %>
                    <p class="footer">¿No tienes cuenta?<a href="registro.jsp" class="registro">Por favor, registrate</a></p>
                </div>
            </div>
        </form>
</body>
<script>

</script>
</html>