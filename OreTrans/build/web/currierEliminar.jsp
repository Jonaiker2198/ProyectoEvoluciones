<%-- 
    Document   : currierEliminar
    Created on : 07/06/2020, 09:23:54 PM
    Author     : javie
--%>

<%@page import="Modelo.CurrierDAO"%>
<%@page import="Modelo.Currier"%>
<%
        int id = Integer.valueOf(request.getParameter("codigo"));
        Currier p = new Currier();
        p.setId(id);
        
        new CurrierDAO().Eliminar(p);

        request.getRequestDispatcher("currier.jsp").forward(request, response);
       
    %>