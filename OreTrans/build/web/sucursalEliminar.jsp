<%-- 
    Document   : sucursalEliminar
    Created on : 10/06/2020, 10:49:25 PM
    Author     : javie
--%>
<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>
<%
    int id = Integer.valueOf(request.getParameter("codigo"));
    Sucursal p = new Sucursal();
    p.setId(id);

    new SucursalDAO().Eliminar(p);

    request.getRequestDispatcher("sucursal.jsp").forward(request, response);

%>