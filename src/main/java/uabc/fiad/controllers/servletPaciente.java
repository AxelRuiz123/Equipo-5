package uabc.fiad.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletPaciente", urlPatterns = {"/servletPaciente"})
public class servletPaciente extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && action.equals("register")) {
            registerPaciente(request, response);
        }
    }

    private void registerPaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombreP");
        String apellidoPaterno = request.getParameter("apellidoPP");
        String apellidoMaterno = request.getParameter("apellidoMP");
        String fechaNacimiento = request.getParameter("fechaN");
        String usuario = request.getParameter("usuarioP");
        String email = request.getParameter("emailP");
        String password = request.getParameter("passwordP");

        // Aquí puedes realizar la lógica para registrar al paciente en la base de datos
        // Por ejemplo, guardar los datos en una tabla de pacientes

        // Redirige a la página de inicio de sesión o a donde desees
        response.sendRedirect("index.jsp");
    }
}
