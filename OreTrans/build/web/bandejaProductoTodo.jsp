<%-- 
    Document   : bandejaProductoTodo
    Created on : 09/06/2020, 12:54:36 AM
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
            <div class="alerta">
                <h2>Sin productos solicitados</h2><br>
                
            </div>
        <% 
          }else{
        %>
        <table class="table">
            <thead class="table-info">
                <tr>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Tipo</th>
                    <th>Categoria</th>
                    <th>Disminuir cantidad</th>
                    <th>Retirar</th>
                </tr>
            </thead>
            <tbody>
            <%
            List<Producto> lista = s.getLista();
            Double total= s.getTotal();
            for(Producto pr:lista){
            %>
                <tr>
                    <td><%=pr.getNombre()%></td>
                    <td><%=pr.getStock()%></td>
                    <td><%=pr.getPrecio()%></td>
                    <td><%=pr.getNombre_tipo()%></td>
                    <td><%=pr.getNombre_categoria()%></td>
                    <td class="btnDisminuye">
                        <a href="#" onclick='disminuir(<%=pr.getId()%>)'><i class="fas fa-minus-square"></i></a>
                    </td>
                    <td class="btnRetirar">
                        <a href="#" onclick='retirar(<%=pr.getId()%>)'><i class="fas fa-times-circle"></i></a>
                    </td>
                </tr>
        <% } %>  
            </tbody>
        </table>
            
        <div class="costeTotal">
            <table class="table">
                <thead>
                    <tr>
                        <th class="table-info">Total</th>
                        <th class="table-success"><%=s.getTotal()%></th>
                    </tr>
                    
                </thead>
            </table>
        </div>
    <% }  %>