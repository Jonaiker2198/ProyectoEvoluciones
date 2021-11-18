<%@page import="Modelo.Persona"%>
<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>

        
    <div id="principal">
       
        <div class="registro">
            <form action="Registra" method="POST" enctype="multipart/form-data">
                <div class="container">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txtnombre">Nombre</label>
                          <input type="text" class="form-control" name="txtnombre" required="">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtapellidos">Apellidos</label>
                          <input type="text" class="form-control" name="txtapellidos" required="">
                        </div>
                     </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txtdni">Dni</label>
                          <input type="text" class="form-control" name="txtdni" maxlength="8" pattern="[0-9]+" required="">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtnacimiento">Nacimiento</label>
                          <input type="date" class="form-control" name="txtnacimiento" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txttelefono">Telefono</label>
                          <input type="text" class="form-control" name="txttelefono" maxlength="9" pattern="[0-9]+" required="">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtcorreo">Correo</label>
                          <input type="email" class="form-control" name="txtcorreo" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                          <label for="txtpassword">Password</label>
                          <input type="password" class="form-control" name="txtpassword" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtsuc">Sucursal</label>
                            <select class="form-control"  name="txtsuc">
                                <option value="0">Seleccione</option>
                                <%
                                    List<Sucursal> Lista;
                                    SucursalDAO dao = new SucursalDAO();
                                    Sucursal s = new  Sucursal();
                                    Lista = dao.Listar();
                                    for(Sucursal x:Lista){
                                %>
                                <option value="<%=x.getId()%>"><%=x.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtrol">Rol</label>
                            <select class="form-control"  name="txtrol">
                                <option value="0">Seleccione</option>
                                <option value="admi">Admi</option>
                                <option value="user">User</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Seleccione la imagen <i class="fas fa-images"></i></label>
                        <input type="file" class="form-control-file" name="fileFoto">
                        <p>Formato de imagen PNG</p>
                    </div>
                    
                    <div class="form-row">
                        <input type="submit" class="btnRegistrar btn btn-info" name="btnRegistrar" value="Registrar"/>
                    </div><br>
                    <div class="form-row">
                        <input type="button" class="btnSalir btn btn-danger" onclick="location.href='principalAdmi.jsp'" value="Salir"/>
                    </div>
                    
                    
                </div>
                 
            </form>
        </div>
       
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>