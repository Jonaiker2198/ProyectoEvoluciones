<%-- 
    Document   : bandejaQuita
    Created on : 10/06/2020, 07:59:59 PM
    Author     : javie
--%>
<%@page import="Modelo.SolicitudProDAO"%>
<%@page import="Modelo.Producto"%>
<%
int id = Integer.parseInt(request.getParameter("codi"));
    
    Producto p = new Producto();
  
    
    SolicitudProDAO s = (SolicitudProDAO) session.getAttribute("sbandeja");
    if(s==null){
        s = new SolicitudProDAO();
    }
    s.retirar(id);
    session.setAttribute("sbandeja",s);
    
%>