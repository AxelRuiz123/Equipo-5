/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uabc.fiad.controllers;


import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uabc.fiad.models.Info_P;
import uabc.fiad.models.Paciente;

@WebServlet(name = "serveletConsultaP", urlPatterns = {"/serveletConsultaP"})
public class serveletConsultaP extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Obtener el nombre del paciente desde el formulario
        String nombrePaciente = request.getParameter("nombrePaciente");

        // Obtener la lista de pacientes (deberías obtenerla de tu base de datos u otra fuente de datos)
        List<Paciente> pacientes = obtenerListaPacientes();

        // Buscar el paciente por nombre utilizando la clase Info_P
        List<Paciente> resultados = Info_P.buscarPorNombre(pacientes, nombrePaciente);

        // Mostrar la información del paciente encontrado
       if (!resultados.isEmpty()) {
            out.println("<h2>Información del Paciente:</h2>");
            for (Paciente paciente : resultados) {
            out.println("<p>Nombre: " + paciente.getNombre() + "</p>");
            out.println("<p>Edad: " + paciente.getEdad() + "</p>");
            out.println("<p>Apellido Paterno:" + paciente.getApPaterno() + "</p>" );
            out.println("<p>Apellido Materno:" + paciente.getApMaterno() + "</p>" );
            out.println("<p>Genero: " + paciente.getSexo() + "</p>");
            out.println("<p>Medico: " + paciente.getN_Medico() + "</p>");
            //out.println("<p>Descripcion: " + paciente.getDescripcion() + "</p>");
            out.println("<p>Estado de Salud: " + paciente.getEstadoSalud() + "</p>");
            }
        }else {
            out.println("<p>No se encontraron pacientes con ese nombre.</p>");
        }

        out.close();
    }

  // Método de ejemplo para obtener la lista de pacientes
    private List<Paciente> obtenerListaPacientes() {
        // Implementa la lógica para obtener la lista de pacientes (base de datos, por ejemplo)
        // Retorna una lista ficticia para propósitos de ejemplo
        return List.of(
            new Paciente("Alan", "alan", "1234", "alan@uabc", "18/12/23", 1, 21,
                    "AP", "AM", "AAAA", 2222, "Dr. Gabriela", "Masculino", "Estable"),
                
            new Paciente("Dulce", "dul", "12345", "dulce@uabc", "19/12/23", 1, 21, "AP", 
                    "AM", "AAAA", 2222, "Dr. Ana", "Femenino", "Estable")
        );
    }
}
