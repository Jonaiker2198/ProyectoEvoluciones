<%-- 
    Document   : eliminar
    Created on : 01/06/2020, 11:12:19 PM
    Author     : javie
--%>

<%@page import="Modelo.PersonaDAO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="Modelo.Persona"%>

        
    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        Persona p = new Persona();
        p.setId(id);
        
        new PersonaDAO().Eliminar(p);

        request.getRequestDispatcher("usuarios.jsp").forward(request, response);
       
    %>


        