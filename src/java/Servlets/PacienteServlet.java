package Servlets;

import Datos.Conexion;
import beans.Paciente;
import dao.PacienteDaoImpl;
import interfaces.PacienteDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PacienteSe", urlPatterns = {"/PacienteSe"})
public class PacienteServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

        RequestDispatcher rd = request.getRequestDispatcher("/registroPaciente.jsp");
        rd.forward(request, response);

        rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            int dni = Integer.parseInt(request.getParameter("dni"));
            String direccion = request.getParameter("direccion");
            int telefono = Integer.parseInt(request.getParameter("telefono"));
            String email = request.getParameter("email");
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");

            PacienteDao padao = new PacienteDaoImpl();

            Paciente pa = new Paciente();
            pa.setNombre(nombre);
            pa.setApellidos(apellido);
            pa.setDni(dni);
            pa.setDireccion(direccion);
            pa.setTelefono(telefono);
            pa.setEmail(email);
            pa.setUsuario(usuario);
            pa.setClave(clave);

            boolean status = padao.registrarPaciente(pa);
            status = false;
            if (status) {
                System.out.println("Usuario Registrado");
                RequestDispatcher rd = request.getRequestDispatcher("/registroPaciente.jsp");
                rd.forward(request, response);
            } else {
                String mensaje = "Usuario NO registrado";
                request.setAttribute("mensaje", mensaje);
                RequestDispatcher rd = request.getRequestDispatcher("/registroPaciente.jsp");
                rd.forward(request, response);
                
            }
        } catch (Exception ex) {
            ex.getMessage();
        }

        String login = request.getParameter("login");
        if (login.equals("login")) {
            try {
                String usu = request.getParameter("us");
                String cv = request.getParameter("cv");

                PacienteDao padao = new PacienteDaoImpl();

                boolean status = padao.loginPaciente(usu, cv);
                if (status) {
                    System.out.println("Usuario Registrado");
                    RequestDispatcher rd = request.getRequestDispatcher("/menuPaciente.jsp");
                    rd.forward(request, response);
                } else {
                    System.out.println("Usuario NO registrado");
                    RequestDispatcher rd = request.getRequestDispatcher("/registroMedico.jsp");
                    rd.forward(request, response);
                }

            } catch (Exception ex) {
                System.out.println(ex);
            }

        }

    }

}
