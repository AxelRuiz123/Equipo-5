/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uabc.fiad.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uabc.fiad.models.Medico;
import uabc.fiad.models.Paciente;

/**
 *
 * @author kevin
 */
@WebServlet(name = "serveletMedico", urlPatterns = {"/serveletMedico"})
public class serveletMedico extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

    try {
        String action = request.getParameter("action");

        if (action != null) {
            if (action.equals("register")) {
                registerUser(request, response);
            } else if (action.equals("login")) {
                loginUser(request, response);
            }
        }
    } catch (Exception e) {
        // Manejo de errores
    }
}
    
    protected void logout(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    HttpSession session = request.getSession();
    session.removeAttribute("usuario");  // Elimina el atributo "usuario" de la sesión

    // Redirige al usuario a la página de inicio de sesión
    response.sendRedirect("index.jsp");
}

    protected void registerUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nomb = request.getParameter("nombre");
        String usuar = request.getParameter("usuario");
        String pass = request.getParameter("password");
        String correo = request.getParameter("email");
        String cedulaP = request.getParameter("cedula");
        int edad = Integer.parseInt(request.getParameter("edad"));

        ArrayList<Medico> usuarios = Medico.inicializarMedicos(); // Obtenemos la lista de usuarios existente
        Medico.agregarMedicos(usuarios, nomb, usuar, pass, correo, edad, cedulaP);
        // Guardar el usuario en la sesión
        Medico user = new Medico(nomb, usuar, pass, usuarios.size() + 1, correo, edad, cedulaP);
        request.getSession().setAttribute("usuario", user);
        // Redirigir al usuario a la página "menuM.jsp"
        response.sendRedirect("menuM.jsp");
    }
    
  
    protected void loginUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("medico");
        String password = request.getParameter("pwd");
        Medico u = Medico.validaMedicos(usuario, password);
        Paciente u2 = Paciente.validaPacientes(usuario, password);
        
        
        

        if (u != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", u);
            RequestDispatcher rd = request.getRequestDispatcher("menuM.jsp");
            rd.forward(request, response);    
        }
        if (u2 != null){
              HttpSession session = request.getSession();
            session.setAttribute("usuario", u);
            RequestDispatcher rd = request.getRequestDispatcher("menuP.jsp");
            rd.forward(request, response); 
        }
        else {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp?error=1");
            rd.forward(request, response);
        }
    }
        

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
    Medico usuario = (Medico) session.getAttribute("usuario");

    if (usuario != null) {
        // El usuario ha iniciado sesión, redirigir al menuM.jsp
        response.sendRedirect("menuM.jsp");
        return;
    }

    String action = request.getParameter("action");

    if (action != null) {
        if (action.equals("logout")) {
            logout(request, response);
            return;
        }
    }

    processRequest(request, response); // Llamar al método processRequest con los parámetros request y response
}


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
