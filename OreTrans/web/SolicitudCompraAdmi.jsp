<%-- 
    Document   : SolicitudCompraAdmi
    Created on : 12/06/2020, 05:22:57 PM
    Author     : javie
--%>

<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="Modelo.SolicitudCompraDAO"%>
<%@page import="Modelo.SolicitudCompra"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@include file="Reutilizables/headerAdmi.jsp" %> 
<%
    List<SolicitudCompra> Lista;
    SolicitudCompraDAO dao = new SolicitudCompraDAO();
    Lista = dao.Listar();
    Date date = new Date();
    SimpleDateFormat ft =  new SimpleDateFormat ("yyyy-MM-dd");
    String dateActual = ft.format(date);
%>
    
    <div id="solicitud2"> 
        
        <table class="table" >
            <div class="row">
                <div class="col-md-4">
                    <form method="post">
                        <input type="submit" class="btn btn-outline-info" name="btnActualizar" value="Actualizar registros">
                    </form>
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="#">
                        <div class="input-group">
                            <input type="text" class="form-control" name="txtbuscar" placeholder="Buscar">
                            <div class="input-group-append">
                                <input class="btn btn-outline-secondary" type="submit" name="btnBuscar" value="Buscar"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>  
            <br>
            <thead class="thead-dark" align="center">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Producto</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Currier</th>
                    <th scope="col">Sucursal</th>
                    <th scope="col">Usuario</th>
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
                    <th scope="row"><%=e.getId()%></th>
                    <td><%=e.getNombre_producto()%></td>
                    <td><%=e.getNombre_tipo()%></td>
                    <td><%=e.getNombre_categoria()%></td>
                    <td><%=e.getCantidad_total()%></td>
                    <td><%=e.getPrecio_total()%></td>
                    <td><%=e.getNombre_currier()%></td>
                    <td><%=e.getNombre_sucursal()%></td>
                    <td><%=e.getNombre_empleado()%></td>
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
<%
        Connection cnx=null;
        Statement sta=null;
        ResultSet rs=null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/oretrans?user=root&password"); 
            sta=cnx.createStatement();
        }catch(Exception e){}
            if(request.getParameter("btnActualizar")!=null){
                String estado = "Finalizado";
                sta.executeUpdate("update solicitud_productos set estado='"+estado+"' where fecha_entrega ='"+dateActual+"'");
                request.getRequestDispatcher("SolicitudCompraAdmi.jsp").forward(request, response);
            }
    %>

<%@include file="Reutilizables/footer.jsp" %> 