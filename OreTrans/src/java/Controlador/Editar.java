/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Persona;
import Modelo.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javie
 */
public class Editar extends HttpServlet {

    PersonaDAO dao = new PersonaDAO();
    Persona p = new Persona();
    
    int editar;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        /*EMPEZANDO*/
        String accion = request.getParameter("btnGuardar");
        if(accion.equals("Guardar")){
            int id = Integer.valueOf(request.getParameter("txtid"));
            String nombre = request.getParameter("txtnombre");
            String apelllidos = request.getParameter("txtapellidos");
            String dni = request.getParameter("txtdni");
            String nacimiento = request.getParameter("txtnacimiento");
            String telefono = request.getParameter("txttelefono");
            String correo = request.getParameter("txtcorreo");
            String password = request.getParameter("txtpassword");
            String rol = request.getParameter("txtrol");
            
            p.setId(id);
            p.setNombre(nombre);
            p.setApellidos(apelllidos);
            p.setDni(dni);
            p.setNacimiento(nacimiento);
            p.setTelefono(telefono);
            p.setCorreo(correo);
            p.setPassword(password);
            p.setRol(rol);
            
            editar = dao.Editar(p);
            if(editar == 1){
                request.getRequestDispatcher("usuarios.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("principalAdmi.jsp").forward(request, response);
            }
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
        processRequest(request, response);
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
