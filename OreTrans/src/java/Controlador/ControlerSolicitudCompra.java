/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.SolicitudCompra;
import Modelo.SolicitudCompraDAO;
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
public class ControlerSolicitudCompra extends HttpServlet {

    
    SolicitudCompraDAO dao = new SolicitudCompraDAO();
    SolicitudCompra s = new SolicitudCompra();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlerSolicitudCompra</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlerSolicitudCompra at " + request.getContextPath() + "</h1>");
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
                           
            case "Generar":
                String emp = request.getParameter("txtempleado");
                String producto = request.getParameter("txtproducto");
                String tipo = request.getParameter("txttipo");
                String categoria = request.getParameter("txtcategoria");
                int stock = Integer.parseInt(request.getParameter("txtstock"));
                double precio = Double.parseDouble(request.getParameter("txtprecio"));
                String currier = request.getParameter("txtcurrier");
                String sucursal = request.getParameter("txtsucursal");
                String fechaA = request.getParameter("fechaActual");
                String fechaE = request.getParameter("fechaEntrega");
                
                s.setNombre_empleado(emp);
                s.setNombre_producto(producto);
                s.setNombre_tipo(tipo);
                s.setNombre_categoria(categoria);
                s.setCantidad_total(stock);
                s.setPrecio_total(precio);
                s.setNombre_currier(currier);
                s.setNombre_sucursal(sucursal);
                s.setFecha_emision(fechaA);
                s.setFecha_entrega(fechaE);
                                
                dao.Agregar(s);
                
                request.getRequestDispatcher("productosUser.jsp").forward(request, response);
                break;

                
            default:
                request.getRequestDispatcher("solicitudCampra?accion=Listar").forward(request, response);
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
