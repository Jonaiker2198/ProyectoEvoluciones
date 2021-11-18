<%-- 
    Document   : productos
    Created on : 05/06/2020, 09:16:51 PM
    Author     : javie
--%>

<%@page import="Modelo.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   

    <%
        List<Producto> Lista;
        ProductoDAO dao = new ProductoDAO();
        Lista = dao.Mostrar();
    %>

    <div id="producto">
        
        <div class="container">
            
            <div class="row">
                <div class="col-md-4">
                    <form action="" method="post">
                        <input type="button" class="btn btn-info" onclick="location.href='productosNuevo.jsp'" value="Nuevo producto">
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
            
            <h1>Productos destacados</h1>

            <%
                for(Producto p:Lista){
            %>
                <div class="product">
                    <div class="proimagen">
                        <img src="ProductoIMG?id=<%=p.getId()%>" alt=""/>
                    </div>
                    <h2><%=p.getNombre()%></h2>
                    <h5><%=p.getDescripcion()%></h5>
                    <h4><%=p.getNombre_tipo()%></h4>
                    <h3><%=p.getNombre_categoria()%></h3>
                    <div class="cuadro">
                        <h4>S/.<%=p.getPrecio()%></h4>
                        <h3><%=p.getStock()%> uni.</h3>
                    </div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <a class="col-md-3" href="productosEditar.jsp?codigo=<%=p.getId()%>">
                            <i style="color: green" class="fas fa-edit"></i>
                        </a>
                        <a class="col-md-3" href="productosEliminar.jsp?codigo=<%=p.getId()%>">
                             <i style="color: red" class="fas fa-trash-alt"></i>
                        </a>
                    </div>
                    
                </div>
             <%
                }
            %>
            
        </div>
        
    </div>

<%@include file="Reutilizables/footer.jsp" %>