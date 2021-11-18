/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Proveedor;
import Modelo.ProveedorDAO;
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
public class ControlerProveedor extends HttpServlet {

    /**/
    ProveedorDAO dao = new ProveedorDAO();
    Proveedor p = new Proveedor();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String accion = request.getParameter("accion");
        
        switch(accion){
            case "Listar":
                List<Proveedor> lista = dao.Listar();
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("proveedores.jsp").forward(request, response);
                break;
            
            case "Nuevo":
                request.getRequestDispatcher("proveedoresNuevo.jsp").forward(request, response);
                break;
                
            case "Registrar":
                String razon = request.getParameter("txtrazon");
                String ruc = request.getParameter("txtruc");
                String telefono = request.getParameter("txttelefono");
                String direccion = request.getParameter("txtdireccion");
                String correo = request.getParameter("txtcorreo");
                String representante = request.getParameter("txtrepresentante");
                
                p.setRazon_social(razon);
                p.setRuc(ruc);
                p.setTelefono(telefono);
                p.setDireccion(direccion);
                p.setCorreo(correo);
                p.setRepresentante(representante);
                                
                dao.Agregar(p);
                
                request.getRequestDispatcher("proveedores.jsp").forward(request, response);
                break;

                
            default:
                request.getRequestDispatcher("ControlerProveedor?accion=Mostrar").forward(request, response);
                break;
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
