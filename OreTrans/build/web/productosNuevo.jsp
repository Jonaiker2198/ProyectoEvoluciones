<%@include file="Reutilizables/headerAdmi.jsp" %>

<script>
    function funMarca() {
        categoria = document.getElementById("selcategoria").value;
        datos = {selcategoria:categoria};
        $.ajax({
           data: datos,
           type: 'POST',
           url: "cbmmarca.jsp",
           success: function (respuesta) {
               document.getElementById("divmarca2").innerHTML=respuesta;
           }
        });
    }
</script>
        
    <div id="producto">
       
        <div class="registro">
            <form action="ProductoRegistra" method="POST" enctype="multipart/form-data">
                <div class="container">
                    
                    <div class="form-row">
                        <div class="form-group col-md-12">
                          <label for="txtnombre">Codigo</label>
                          <input type="text" class="form-control" name="txtnombre" required="">
                        </div>
                     </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                          <label for="txtdescripcion">Descripcion</label>
                          <input type="text" class="form-control" name="txtdescripcion" required="">
                        </div>
                     </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtcategoria">Categoria</label>
                            <div id="divcategoria2">
                                <jsp:include page="cbmcategoria.jsp" />
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtmarca">Marca</label>
                            <div id="divmarca2">
                                <jsp:include page="cbmmarca.jsp" />
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtprecio">Fecha</label>
                             <input type="date" class="form-control" name="txtprecio" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtstock">Cantidad</label>
                            <input type="number" class="form-control" name="txtstock" pattern="[0-9]+" required="">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="form-group col-md-12">
                            <label>Seleccione la imagen <i class="fas fa-images"></i></label>
                            <input type="file" class="form-control-file" name="fileFoto">
                            <p>Formato de imagen PNG</p>
                        </div>    
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