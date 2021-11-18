<%-- 
    Document   : solicitudCompra
    Created on : 11/06/2020, 12:58:36 PM
    Author     : javie
--%>
<%@page import="Modelo.CurrierDAO"%>
<%@page import="Modelo.Currier"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="Modelo.SolicitudProDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>

<%@include file="Reutilizables/headerUser.jsp" %> 

<%
        SolicitudProDAO q = (SolicitudProDAO) session.getAttribute("sbandeja");
        Date date = new Date();
        SimpleDateFormat ft =  new SimpleDateFormat ("yyyy-MM-dd");
        String dateActual = ft.format(date);
        
        List<Currier> Li;
        CurrierDAO Cdao2 = new CurrierDAO();
        Li = Cdao2.Cantidad();
        
%>

    <div id="solicitud">
        <div class="tablasolicitud">
            <% if(q==null){ %>
            <div class="alerta">
                <h2>No hay productos solicitados</h2><br>
                <input type="button" class="btn btn-secondary btn-lg btn-block" onclick="location.href='productosUserCarrito.jsp'" value="Regresar">
            </div>
                
            <% }else{ %>
            <table class="table">
                <thead class="thead-light" align="center">
                    <tr>
                        <th scope="col">Producto</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Precio</th>
                    </tr>
                </thead>
                <tbody align="center">
                    <tr>
                    <%
                      List<Producto> lista = q.getLista();
                      Double total= q.getTotal();
                      for(Producto pr:lista){
                    %>
                <form action="ControlerSolicitudCompra" method="post"> 
                    <td><input type="text" class="form-control" name="txtproducto" value="<%=pr.getNombre()%>" readonly=""></td>
                    <td><input type="text" class="form-control" name="txttipo" value="<%=pr.getNombre_tipo()%>" readonly=""></td>
                    <td><input type="text" class="form-control" name="txtcategoria" value="<%=pr.getNombre_categoria()%>" readonly=""></td>
                    <td><input type="text" class="form-control" name="txtstock" value="<%=pr.getStock()%>" readonly=""</td>
                    <td><input type="text" class="form-control" name="txtprecio" value="<%=pr.getPrecio()%>" readonly=""></td>
                    </tr>
                     <% } %> 
                    <tr>
                        <td></td><td></td><td></td>
                        <td class="table-success"><b>Precio Total</b></td>
                        <td class="table-info"><b><input type="text" class="form-control" name="txtpreciototal" value="<%=total%>" readonly=""></b></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
                  
        <div class="classsolicitud">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Usuario</label>
                            <input type="text" class="form-control" value="${correo}" name="txtempleado" readonly="">
                        </div>
                        <div class="col-md-4">
                            <label>Currier</label>
                            <%
                                List<Currier> L;
                                CurrierDAO Cdao = new CurrierDAO();
                                for(Currier li:Li){
                                    int n = li.getCantidad();
                                    int randon = (int) (Math.random()*n)+1;
                                    L = Cdao.RandonId(randon);
                                for(Currier y:L){
                            %>
                            <input type="text" class="form-control" name="txtcurrier" value="<%=y.getRazon_social()%>" readonly="">
                            <% } } %>
                        </div>
                        <div class="col-md-4">
                            <label>Sucursal</label>
                            <select class="form-control"  name="txtsucursal">
                                <option value="0">Seleccione</option>
                                <%
                                    List<Sucursal> Lista;
                                    SucursalDAO dao = new SucursalDAO();
                                    Lista = dao.Listar();
                                    for(Sucursal x:Lista){
                                %>
                                <option value="<%=x.getNombre()%>"><%=x.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>
                        
                        <div class="container">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-4">
                                    <label>Fecha emitida</label>
                                    <input type="text" class="form-control" value="<%=dateActual%>" name="fechaActual" readonly="">
                                </div>
                                <div class="col-md-4">
                                    <label>Fecha de entrega</label>
                                    <input type="date" min="<%=dateActual%>" name="fechaEntrega" class="form-control">
                                </div>
                            </div>    
                        </div>    
                        
                        
                    </div>
                   
                    <div class="btnGenerar">
                        <input type="submit" class="btn btn-outline-info" name="accion" value="Generar">
                    </div>
                </div>            
            </form>
        </div>
    </div>


<%@include file="Reutilizables/footer.jsp" %> 