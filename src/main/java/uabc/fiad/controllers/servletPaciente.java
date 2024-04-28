
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uabc.fiad.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uabc.fiad.models.Paciente;

@WebServlet(name = "servletPaciente", urlPatterns = {"/servletPaciente"})
public class servletPaciente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String archivo = request.getHeader("referer");
            String nombre = "";

            if (archivo.lastIndexOf("/") == archivo.length() - 1) {
                nombre = "index";
            } else {
                nombre = archivo.substring(archivo.lastIndexOf("/") + 1);
            }

            System.out.println("nombre archivo = " + nombre);

            if (nombre.equals("index")) {
                String login = request.getParameter("paciente");
                String pass = request.getParameter("pwd");

                Paciente paci = new Paciente();
                // Eliminamos la llamada al método iniciaSesion2
                Paciente p = paci.validaPacientes(login, pass);

                if (p != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("clave", p.getCorreo());
                    session.setAttribute("nombre", p.getNombre());
                    RequestDispatcher rd = request.getRequestDispatcher("menuP.jsp");
                    rd.forward(request, response);
                    PrintWriter out = response.getWriter();
                    out.println("Bienvenido(a) " + session.getAttribute("nombre"));
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp?error=1");
                    rd.forward(request, response);
                }
            } else {
                if (nombre.equals("menuP") || nombre.equals("servletPaciente")) {
                    System.out.println("cerrando sesión");
                    PrintWriter out = response.getWriter();
                    out.println("Cerrar sesión");
                    HttpSession session = request.getSession();
                    session.invalidate();
                }
            }
        } catch (IOException | ServletException e) {
            // Manejo de excepciones
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Obtener datos del formulario
    String nombre = request.getParameter("nombreP");
    int edad = Integer.parseInt(request.getParameter("edadP"));
    String usuario = request.getParameter("usuarioP");
    String correo = request.getParameter("emailP");
    String password = request.getParameter("passwordP");
    String passwordConfirmar = request.getParameter("passwordConfirmaP");

    // Realizar las validaciones necesarias (puedes agregar más validaciones según tus requisitos)

    // Crear una instancia de la clase Paciente y agregar el paciente
    Paciente nuevoPaciente = new Paciente(nombre, usuario, password, correo, edad, "", "", "", 0, "", "", "");
    Paciente.agregarPaciente(nuevoPaciente);

    // Puedes redirigir a otra página o hacer lo que sea necesario después del registro
    RequestDispatcher rd = request.getRequestDispatcher("registroExitoso.jsp");
    rd.forward(request, response);
    
}

@Override
    public String getServletInfo() {
        return "Short description";
 }
}
