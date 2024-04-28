/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uabc.fiad.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uabc.fiad.models.Paciente;

@WebServlet(name = "servletInfoP", urlPatterns = {"/servletInfoP"})
public class servletInfoP extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // ...

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ...
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreBuscado = "Lucas"; // Nombre a buscar
        List<Paciente> pacientesEncontrados = Paciente.buscarPorNombre(getTodosLosPacientes(), nombreBuscado);
        request.setAttribute("pacientesEncontrados", pacientesEncontrados);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/mostrarPacientes.jsp");
        dispatcher.forward(request, response);
        processRequest(request, response);
    }

    // Mueve esta definición fuera del método doGet
    private List<Paciente> getTodosLosPacientes() {
        return List.of(
                new Paciente("Lucas", 25, "Gómez", "Pérez", "Lucas_P@meditec.com", "clave123", "Masculino", "ABC123", "1234567890", null, "Bueno"),
                new Paciente("María", 30, "López", "Martínez", "maria_P@meditec.com", "clave456", "Femenino", "XYZ789", "9876543210", null, "Regular")
        );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            // Lógica de procesamiento adicional para el método doPost
        } catch (Exception e) {
            e.printStackTrace();
            // Otro manejo de excepciones si es necesario
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

