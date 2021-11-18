<%-- 
    Document   : currierNuevo
    Created on : 07/06/2020, 09:24:13 PM
    Author     : javie
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Currier</h2>
        </div>
        
        <div class="container">
            
            <form action="ControlerCurrier" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txtrazon">Razon Social</label>
                      <input type="text" class="form-control" name="txtrazon" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtruc">Ruc</label>
                      <input type="text" class="form-control" name="txtruc" maxlength="11" pattern="[0-9]+" required="">
                    </div>
                 </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txttelefono">Telefono</label>
                      <input type="text" class="form-control" name="txttelefono" maxlength="9" pattern="[0-9]+" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtdireccion">Direccion</label>
                      <input type="text" class="form-control" name="txtdireccion" required="">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txtcorreo">correo</label>
                      <input type="email" class="form-control" name="txtcorreo" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtrepresentante">Representante</label>
                      <input type="text" class="form-control" name="txtrepresentante" required="">
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