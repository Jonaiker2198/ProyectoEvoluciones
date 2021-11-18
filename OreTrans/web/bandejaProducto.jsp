<%-- 
    Document   : productosBandeja
    Created on : 08/06/2020, 10:43:57 PM
    Author     : javie
--%>

<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.SolicitudProDAO"%>

<%
    SolicitudProDAO s = (SolicitudProDAO) session.getAttribute("sbandeja");
    
%>

        
            <% 
                if(s==null){ 
            %>
               <p align="center">Sin productos seleccionados</p>
            <% 
              }else{
                List<Producto> lista = s.getLista();
                Double total= s.getTotal();
            %>
                <p>Se ha añadido</p>
                <table class="table">
                    <thead class="thead-light">
                      <tr>
                        <th scope="col">Modelo</th>
                        <th scope="col">Cantidad</th>
                      </tr>
                    </thead>
            <%
                for(Producto pr:lista){
            %>  
                    <tbody>
                        <tr>
                          <td><%=pr.getNombre()%></td>
                          <td><%=pr.getStock()%></td>
                        </tr>
                    </tbody>
               
            <% } %>
                 </table>
                    <input type="button" class="btn btn-primary" onclick="location.href='productosUserCarrito.jsp'" value="Mostrar todo">
                    
            <% } %>
  
