/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import Modelo.ProductoDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author javie
 */
@MultipartConfig
public class ProductoRegistra extends HttpServlet {

    ProductoDAO dao = new ProductoDAO();
    Producto p = new Producto();
    
    int registro;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("btnRegistrar");
        if(accion.equals("Registrar")){
            int id_car = Integer.parseInt(request.getParameter("selcategoria"));
            int id_mar = Integer.parseInt(request.getParameter("selmarca"));
            String nombre = request.getParameter("txtnombre");
            String descripcion = request.getParameter("txtdescripcion");
            Double precio = Double.parseDouble(request.getParameter("txtprecio"));
            int stock = Integer.parseInt(request.getParameter("txtstock"));
            Part part = request.getPart("fileFoto");
            InputStream inputStream = part.getInputStream();
            
            p.setId_categoria(id_car);
            p.setId_tipo(id_mar);
            p.setNombre(nombre);
            p.setDescripcion(descripcion);
            p.setPrecio(precio);
            p.setStock(stock);
            p.setFoto(inputStream);
            
            registro = dao.Registrar(p);
            if(registro == 1){
                request.getRequestDispatcher("productos.jsp").forward(request, response);
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
