<%-- 
    Document   : bandejaAgrega
    Created on : 08/06/2020, 11:06:34 PM
    Author     : javie
--%>
<%@page import="Modelo.SolicitudProDAO"%>
<%@page import="Modelo.Producto"%>
<%
    int id = Integer.parseInt(request.getParameter("cod"));
    String nombre = request.getParameter("nom");
    Double precio = Double.parseDouble(request.getParameter("pre"));
    String nombreM = request.getParameter("nomM");
    String nombreC = request.getParameter("nomC");
    
    Producto p = new Producto();
    
    p.setId(id);
    p.setNombre(nombre);
    p.setStock(1);
    p.setPrecio(precio);
    p.setNombre_tipo(nombreM);
    p.setNombre_categoria(nombreC);
    
    SolicitudProDAO s = (SolicitudProDAO) session.getAttribute("sbandeja");
    if(s==null){
        s = new SolicitudProDAO();
    }
    s.agregar(p);
    session.setAttribute("sbandeja",s);
%>