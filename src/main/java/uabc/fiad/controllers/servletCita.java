/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uabc.fiad.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uabc.fiad.models.Cita;
import uabc.fiad.models.Fecha;
import uabc.fiad.models.Hora;

/**
 *
 * @author sayo1
 */
public class servletCita extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Fecha fecha = new Fecha();
        Hora hora = new Hora();

        request.setAttribute("fecha", fecha);
        request.setAttribute("hora", hora);
        /**request.setAttribute("dias", fecha.getDias());
        request.setAttribute("meses", fecha.getMeses());
        request.setAttribute("anos", fecha.getAnos());
        request.setAttribute("horas", hora.getHoras());
        **/
        System.out.println("funciona");
        request.getRequestDispatcher("citasP.jsp").forward(request, response);
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario
        String dia = request.getParameter("dia");
        String mes = request.getParameter("mes");
        String ano = request.getParameter("ano");
        String hora = request.getParameter("hora");
        String nombrePaciente = request.getParameter("nombrePaciente");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apellido2");
        String motivo = request.getParameter("motivo");

        // Formar la fecha completa
        String fecha = dia + "/" + mes + "/" + ano;

        // Crear una nueva instancia de Cita
        Cita nuevaCita = new Cita(fecha, hora, nombrePaciente, apellido1, apellido2, motivo);

        // Agregar la cita a la lista de citas
        Cita.agregarCita(nuevaCita);

        // Redireccionar a CC.jsp
        request.setAttribute("cita", nuevaCita);
        request.getRequestDispatcher("CC.jsp").forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "ServletCita";
    }
}
