<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Modelo.Conexion"%>
<%@page import="Modelo.PersonaDAO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>

  
    <%
        List<Persona> Lista;
        PersonaDAO dao = new PersonaDAO();
        Lista = dao.Mostrar();
    %>

    <div id="central">
        
        <div class="titulo">
            <h2>Usuarios</h2>
        </div>
        
        <div class="contenedor">
        
            <div class="row">
                <div class="col-md-4">
                    <form action="ControlerProveedor" method="post">
                        <input type="button" class="btn btn-info" onclick="location.href='registro.jsp'" value="Nuevo Usuario">
                    </form>
                    
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="Buscar" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" name="txtbuscar" placeholder="Buscar">
                            <div class="input-group-append">
                                <input class="btn btn-outline-secondary" type="submit" name="btnBuscar" value="Buscar"/>
                            </div>
                        </div>
                    </form>
                    <br>
                    <div class="row">
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> ID
                        </div>
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> NOMBRE
                        </div>
                        <div class="col-md-4">
                            <input type="checkbox" value="RUC"/> AREA
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="tabla">
                <table class="table">
                    <thead class="thead-light" align="center">
                      <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Dni</th>
                        <th scope="col">Naciento</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Password</th>
                        <th scope="col">Sucursal</th>
                        <th scope="col">Rol</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
                      </tr>
                    </thead>
                    <%
                        for(Persona e:Lista){
                    %>
                    <tbody align="center">
                      <tr>
                        <th scope="row"><%=e.getId()%></th>
                        <td><%=e.getNombre()%></td>
                        <td><%=e.getApellidos()%></td>
                        <td><%=e.getDni()%></td>
                        <td><%=e.getNacimiento()%></td>
                        <td><%=e.getTelefono()%></td>
                        <td><%=e.getCorreo()%></td>
                        <td><%=e.getPassword()%></td>
                        <td><%=e.getNombre_sucursal()%></td>
                        <td><%=e.getRol()%></td>
                        <td>
                            <a  href="editar.jsp?codigo=<%=e.getId()%>">
                                <i style="color: green" class="fas fa-edit"></i>
                            </a>
                        </td>
                        <td>
                            <a href="eliminar.jsp?codigo=<%=e.getId()%>">
                                <i style="color: red" class="fas fa-trash-alt"></i>
                            </a>
                        </td>
                      </tr>
                    </tbody>
                    <%
                          }
                    %>
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
    </div>
       


<%@include file="Reutilizables/footer.jsp" %>