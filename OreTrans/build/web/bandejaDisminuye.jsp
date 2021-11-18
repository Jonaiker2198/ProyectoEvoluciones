<%-- 
    Document   : bandejaDisminuye
    Created on : 15/06/2020, 11:09:29 PM
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
    s.disminuir(id);
    session.setAttribute("sbandeja",s);
    
%>