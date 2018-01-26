/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Datos.Conexion;
import beans.Medico;
import dao.MedicoDaoImpl;
import interfaces.MedicoDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author renato
 */
@WebServlet(name = "MedicoSe", urlPatterns = {"/MedicoSe"})
public class MedicoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd = request.getRequestDispatcher("/registroMedico.jsp");
        rd.forward(request, response);
        

        MedicoDao medico = new MedicoDaoImpl();
        try {
            List<Medico> lista = medico.listarMedico();
            request.setAttribute("lista", lista);
            rd = request.getRequestDispatcher("/listaMedico.jsp");
            rd.forward(request, response);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        rd = request.getRequestDispatcher("/listaMedico.jsp");
            rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            int dni = Integer.parseInt(request.getParameter("dni"));
            int telefono = Integer.parseInt(request.getParameter("telefono"));
            String email = request.getParameter("email");
            String especialidad = request.getParameter("especialidad");

            Conexion con = new Conexion();
            MedicoDao padao = new MedicoDaoImpl();

            Medico me = new Medico();
            me.setNombre(nombre);
            me.setApellido(apellido);
            me.setDni(dni);
            me.setTelefono(telefono);
            me.setEmail(email);
            me.setId_especilidad(especialidad);

            boolean status = padao.registrarMedico(me);
//            boolean status2 = padao.registrarUsuario(usuario, clave);

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
            ex.getMessage();
        }

        String listar = request.getParameter("listar");

    }

}
