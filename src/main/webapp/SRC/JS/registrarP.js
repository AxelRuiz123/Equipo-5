/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


window.addEventListener('DOMContentLoaded', function() {
    var form = document.querySelector('.form_container');
    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Evita que se envíe el formulario automáticamente

        var nombre = document.getElementById('nombreP').value;
        var edad = parseInt(document.getElementById('edadP').value);
        var password = document.getElementById('passwordP').value;
        var confirmarPassword = document.getElementById('passwordConfirmaP').value;

        var errores = [];

        if (!validarNombre(nombre)) {
            errores.push('El nombre debe contener solo letras y no puede estar vacío.');
        }

        if (password !== confirmarPassword) {
            errores.push('Las contraseñas no coinciden.');
        }

        if (errores.length > 0) {
            mostrarErrores(errores);
        } else {
            form.submit(); // Envía el formulario si no hay errores
        }
    });

    function validarNombre(nombre) {
        var regex = /^[a-zA-Z\s]+$/; // Expresión regular para permitir solo letras y espacios
        return regex.test(nombre);
    }

    function mostrarErrores(errores) {
        var mensaje = 'Por favor, corrige los siguientes errores:\n';
        errores.forEach(function(error) {
            mensaje += '- ' + error + '\n';
        });
        alert(mensaje);
    }
});
