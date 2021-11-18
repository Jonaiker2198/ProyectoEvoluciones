<%-- 
    Document   : marca
    Created on : 08/06/2020, 07:02:19 PM
    Author     : javie
--%>

<%@page import="Modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.CategoriaDAO"%>
<%
    String valor = request.getParameter("selcategoria");
    int cat = 0;
    if(valor == null){
        cat = 0;
    }else{
        cat = Integer.parseInt(valor);
    }
    CategoriaDAO daoM = new CategoriaDAO();
    List<Categoria> ListaM = daoM.MostrarMar(cat);
%>


<select class="form-control" id="selmarca" name="selmarca">
    <option value="0">Todas</option>
    <% for(Categoria m:ListaM){ %>
        <option value="<%=m.getId()%>"><%=m.getNombre()%></option>
    <% } %>
</select>