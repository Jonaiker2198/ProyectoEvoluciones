<%-- 
    Document   : sucursal
    Created on : 10/06/2020, 10:38:31 PM
    Author     : javie
--%>

<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>
<%-- 
    Document   : currier
    Created on : 07/06/2020, 09:19:30 PM
    Author     : javie
--%>

<%@page import="Modelo.CurrierDAO"%>
<%@page import="Modelo.Currier"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   


    <%
        List<Sucursal> Lista;
        SucursalDAO dao = new SucursalDAO();
        Lista = dao.Listar();
    %>

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Sucursal</h2>
        </div>
        
        <div class="contenedor">
            
            <div class="row">
                <div class="col-md-4">
                    <form action="" method="post">
                        <input type="button" class="btn btn-info" onclick="location.href='sucursalNuevo.jsp'" value="Nuevo">
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
            
            <table class="table">
                <thead class="table-danger">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(Sucursal e:Lista){
                    %>
                        <tr>
                            <th scope="row"><%=e.getId()%></th>
                            <td><%=e.getNombre()%></td>
                            <td><%=e.getDireccion()%></td>
                            <td><%=e.getTelefono()%></td>
                            <td><%=e.getCorreo()%></td>
                            <form action="ControlerProveedor" method="post">
                            <td>
                                <a href="sucursalEditar.jsp?codigo=<%=e.getId()%>">
                                    <i style="color: green" class="fas fa-edit"></i>
                                </a>
                            </td>
                            <td>
                                <a href="sucursalEliminar.jsp?codigo=<%=e.getId()%>">
                                    <i style="color: red" class="fas fa-trash-alt"></i>
                                </a>
                            </td>
                            </form>
                        </tr>
                    <%
                      }
                    %>
                </tbody>
            </table>
            
        </div>
        
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>