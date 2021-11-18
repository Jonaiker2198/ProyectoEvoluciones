/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Currier;
import Modelo.CurrierDAO;
import Modelo.Proveedor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javie
 */
public class ControlerCurrier extends HttpServlet {

    
    CurrierDAO dao = new CurrierDAO();
    Currier c = new Currier();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlerCurrier</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlerCurrier at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       
        String accion = request.getParameter("accion");
        
        switch(accion){
            case "Listar":
                List<Currier> lista = dao.Listar();
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("currier.jsp").forward(request, response);
                break;
            
            case "Nuevo":
                request.getRequestDispatcher("currierNuevo.jsp").forward(request, response);
                break;
                
            case "Registrar":
                String razon = request.getParameter("txtrazon");
                String ruc = request.getParameter("txtruc");
                String telefono = request.getParameter("txttelefono");
                String direccion = request.getParameter("txtdireccion");
                String correo = request.getParameter("txtcorreo");
                String representante = request.getParameter("txtrepresentante");
                
                c.setRazon_social(razon);
                c.setRuc(ruc);
                c.setTelefono(telefono);
                c.setDireccion(direccion);
                c.setCorreo(correo);
                c.setRepresentante(representante);
                                
                dao.Agregar(c);
                
                request.getRequestDispatcher("currier.jsp").forward(request, response);
                break;

                
            default:
                request.getRequestDispatcher("ControlerCurrier?accion=Listar").forward(request, response);
                break;
        }
        
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
