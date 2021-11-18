<%-- 
    Document   : productosEliminar
    Created on : 07/06/2020, 06:00:03 PM
    Author     : javie
--%>


<%@page import="Modelo.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>

        
    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        Producto p = new Producto();
        p.setId(id);
        
        new ProductoDAO().Eliminar(p);

        request.getRequestDispatcher("productos.jsp").forward(request, response);
       
    %>