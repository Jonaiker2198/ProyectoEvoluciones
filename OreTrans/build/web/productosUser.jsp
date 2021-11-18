<%-- 
    Document   : productosUser
    Created on : 07/06/2020, 07:00:15 PM
    Author     : javie
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerUser.jsp" %>  

        
    <script>
        function funMarca() {
            categoria = document.getElementById("selcategoria").value;
            datos = {selcategoria:categoria};
            $.ajax({
               data: datos,
               type: 'POST',
               url: "cbmmarca.jsp",
               success: function (respuesta) {
                   document.getElementById("divmarca").innerHTML=respuesta;
               }
            });
        }
        
        function filtrarCat(){
            vcat = document.getElementById("selcategoria").value;
            vmar = document.getElementById("selmarca").value;
            datos = {selcategoria:vcat, selmarca:vmar};
            $.ajax({
               data: datos,
               type: 'POST',
               url: "productosGrid.jsp",
               success: function (respuesta) {
                   document.getElementById("divcatalogo").innerHTML=respuesta;
               }
            });
        }
        
        function agregar(codp, nomp, prep, nomMp,nomCp){
            datos = {cod:codp, nom:nomp, pre:prep, nomM:nomMp, nomC:nomCp};
            $.ajax({
                data: datos,
                type: 'POST',
                url: "bandejaAgrega.jsp",
                success: function (respuesta) {
                    $.ajax({
                        type: 'POST',
                        url: "bandejaProducto.jsp",
                        success: function (rst) {
                            document.getElementById("divbande").innerHTML=rst;
                        } 
                    });
                }
            });
        }
    </script>

    <div id="productoUser">
        
        <div class="filtrar">
            
            <div class="buscar">
                <h2>Filtra tu producto</h2>
                <label>Tipo</label>
                <div id="divcategoria">
                    <jsp:include page="cbmcategoria.jsp" />
                </div>
                
                <label>Categoria</label>
                <div id="divmarca">
                    <jsp:include page="cbmmarca.jsp" />
                </div>
                   
                <input class="btn btn-info" type="button" value="Filtrar" onclick="filtrarCat()"/>
            </div>
            
            <div class="buscar">
                <h2>Busca tu producto</h2>
                <form>
                    <input class="form-control" type="text" name="txtbuscar" placeholder="Buscar"/>
                    <input class="btn btn-success" type="submit" value="Buscar"/>
                </form>
                
            </div>
                
            <div class="mostrar">
                <h2>Tus productos</h2>
                <div id="divbande">
                     <jsp:include page="bandejaProducto.jsp" />
                </div>
            </div>
            
        </div>
        
        <div class="producto">
            <div class="container">
                <h1>Productos destacados</h1>
                <div id="divcatalogo">
                    <jsp:include page="productosGrid.jsp" />
                </div>
            </div>
        </div>
        
        
        
    </div>

<%@include file="Reutilizables/footer.jsp" %>