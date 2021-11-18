<%-- 
    Document   : categoria
    Created on : 08/06/2020, 07:02:09 PM
    Author     : javie
--%>

<%@page import="Modelo.Tipo"%>
<%@page import="Modelo.TipoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    TipoDAO daoC = new TipoDAO();
    List<Tipo> ListaC = daoC.MostrarCat();
%>
    <select class="form-control" id="selcategoria" name="selcategoria" onchange="funMarca()">
        <option value="0">Todas</option>
        <% for(Tipo c:ListaC){ %>
            <option value="<%=c.getId()%>"><%=c.getNombre()%></option>
        <% } %>
    </select>