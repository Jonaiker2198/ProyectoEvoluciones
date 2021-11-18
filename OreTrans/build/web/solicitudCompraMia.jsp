<%-- 
    Document   : solicitudCompraMia
    Created on : 12/06/2020, 02:17:38 PM
    Author     : javie
--%>


<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="Modelo.SolicitudCompraDAO"%>
<%@page import="Modelo.SolicitudCompra"%>

<%@include file="Reutilizables/headerUser.jsp" %> 
<%
    List<SolicitudCompra> Lista;
    SolicitudCompraDAO dao = new SolicitudCompraDAO();
    String correo = (String) session.getAttribute("correo");
    Lista = dao.ListarCliente(correo);
%>
    
    <div id="solicitud">
        <table class="table">
            <thead class="thead-dark" align="center">
                <tr>
                    <th scope="col">Producto</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Currier</th>
                    <th scope="col">Sucursal</th>
                    <th scope="col">Fecha emitida</th>
                    <th scope="col">Fecha entrega</th>
                    <th scope="col">Estado</th>
                </tr>
            </thead>
            <tbody align="center">
                <%
                    for(SolicitudCompra e:Lista){
                %>
                <tr>
                    <td><%=e.getNombre_producto()%></td>
                    <td><%=e.getNombre_tipo()%></td>
                    <td><%=e.getNombre_categoria()%></td>
                    <td><%=e.getCantidad_total()%></td>
                    <td><%=e.getPrecio_total()%></td>
                    <td><%=e.getNombre_currier()%></td>
                    <td><%=e.getNombre_sucursal()%></td>
                    <td><%=e.getFecha_emision()%></td>
                    <td><%=e.getFecha_entrega()%></td>
                    <% if(e.getEstado().equals("Finalizado")){ %>
                        <td style="color: red; font-weight: bold"><%=e.getEstado()%></td>
                    <% }else{ %>
                        <td style="color: #006040; font-weight: bold"><%=e.getEstado()%></td>
                    <% } %>
                </tr>
                <%
                    }
                %>    
            </tbody>
        </table>
    </div>

     
<%@include file="Reutilizables/footer.jsp" %> 