<%-- 
    Document   : mostrarPacientes
    Created on : Nov 27, 2023, 11:53:18 PM
    Author     : sayo1
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mostrar Pacientes</title>
</head>
<body>

<h2>Lista de Pacientes</h2>

<c:if test="${not empty pacientesEncontrados}">
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Apellido Paterno</th>
            <th>Apellido Materno</th>
            <th>Edad</th>
            <th>Estado de Salud</th>
        </tr>
        <c:forEach var="paciente" items="${pacientesEncontrados}">
            <tr>
                <td>${paciente.nombre}</td>
                <td>${paciente.edad}</td>
                <td>${paciente.correo}</td>
                <td>${paciente.estadoSalud}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${empty pacientesEncontrados}">
    <p>No se encontraron pacientes.</p>
</c:if>

</body>
</html>
