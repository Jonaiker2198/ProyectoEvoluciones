<%-- 
    Document   : registroProveedor
    Created on : 05/06/2020, 08:40:10 AM
    Author     : javie
--%>

<%@page import="Modelo.Proveedor"%>
<%@page import="Modelo.ProveedorDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Modelo.PersonaDAO"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   


    <%
        List<Proveedor> Lista;
        ProveedorDAO dao = new ProveedorDAO();
        Lista = dao.Listar();
    %>

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Proveedores</h2>
        </div>
        
        <div class="contenedor">
            
            <div class="row">
                <div class="col-md-4">
                    <form action="" method="post">
                        <input type="button" class="btn btn-info" onclick="location.href='proveedoresNuevo.jsp'" value="Nuevo">
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
                    </form><br>
                    <div class="row">
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> RUC
                        </div>
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> RUBLO
                        </div>
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> RAZON SOCIAL
                        </div>
                    </div>
                </div>
            </div>
            
            <table class="table">
                <thead class="table-info">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Razon social</th>
                        <th scope="col">Ruc</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Rubro</th>
                        <th scope="col">Representante</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(Proveedor e:Lista){
                    %>
                        <tr>
                            <th scope="row"><%=e.getId()%></th>
                            <td><%=e.getRazon_social()%></td>
                            <td><%=e.getRuc()%></td>
                            <td><%=e.getTelefono()%></td>
                            <td><%=e.getDireccion()%></td>
                            <td><%=e.getCorreo()%></td>
                            <td>Textiles S.A.C.</td>
                            <td><%=e.getRepresentante()%></td>
                            <form action="ControlerProveedor" method="post">
                            <td>
                                <a href="proveedoresEditar.jsp?codigo=<%=e.getId()%>">
                                    <i style="color: green" class="fas fa-edit"></i>
                                </a>
                            </td>
                            <td>
                                <a href="proveedoresEliminar.jsp?codigo=<%=e.getId()%>">
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
            <br><br>
            <div class="botones">
                <div class="btn1">
                    <input type="button" class="col-md-12 btn btn-info" value="Aceptar">
                </div>
                <div class="btn2">
                     <input type="button" class="col-md-12 btn btn-danger" value="Salir" >
                </div>
            </div>
        </div>
        
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>