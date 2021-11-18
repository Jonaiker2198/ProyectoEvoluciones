<%-- 
    Document   : proveedoresEliminar
    Created on : 05/06/2020, 09:07:01 PM
    Author     : javie
--%>

<%@page import="Modelo.ProveedorDAO"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="Modelo.PersonaDAO"%>
<%@page import="java.util.List"%>

        
    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        Proveedor p = new Proveedor();
        p.setId(id);
        
        new ProveedorDAO().Eliminar(p);

        request.getRequestDispatcher("proveedores.jsp").forward(request, response);
       
    %>