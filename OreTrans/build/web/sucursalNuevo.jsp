<%-- 
    Document   : sucursalNuevo
    Created on : 10/06/2020, 10:49:40 PM
    Author     : javie
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Sucursal</h2>
        </div>
        
        <div class="container">
            
            <form action="ControlerSucursal" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txtnombre">Nombre</label>
                      <input type="text" class="form-control" name="txtnombre" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtdireccion">Direccion</label>
                      <input type="text" class="form-control" name="txtdireccion" required="">
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
                    <input type="submit" class="btnRegistrar btn btn-info" name="accion" value="Registrar">
                </div><br>
                <div class="form-row">
                    <input type="button" class="btnSalir btn btn-danger" onclick="location.href='principalAdmi.jsp'" value="Salir"/>
                </div>

            </form>
            
        </div>
        
        
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>