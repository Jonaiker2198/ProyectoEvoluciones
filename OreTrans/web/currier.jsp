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
        List<Currier> Lista;
        CurrierDAO dao = new CurrierDAO();
        Lista = dao.Listar();
    %>

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Currier</h2>
        </div>
        
        <div class="contenedor">
            
            <div class="row">
                <div class="col-md-4">
                    <form action="" method="post">
                        <input type="button" class="btn btn-info" onclick="location.href='currierNuevo.jsp'" value="Nuevo">
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
                <thead class="table-success">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Razon social</th>
                        <th scope="col">Ruc</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Direccion</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Representante</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(Currier e:Lista){
                    %>
                        <tr>
                            <th scope="row"><%=e.getId()%></th>
                            <td><%=e.getRazon_social()%></td>
                            <td><%=e.getRuc()%></td>
                            <td><%=e.getTelefono()%></td>
                            <td><%=e.getDireccion()%></td>
                            <td><%=e.getCorreo()%></td>
                            <td><%=e.getRepresentante()%></td>
                            <form action="ControlerProveedor" method="post">
                            <td>
                                <a href="currierEditar.jsp?codigo=<%=e.getId()%>">
                                    <i style="color: green" class="fas fa-edit"></i>
                                </a>
                            </td>
                            <td>
                                <a href="currierEliminar.jsp?codigo=<%=e.getId()%>">
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