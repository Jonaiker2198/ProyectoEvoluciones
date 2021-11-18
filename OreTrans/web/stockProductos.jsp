<%@include file="Reutilizables/headerAdmi.jsp" %> 


<div id="stockProducto">
    <div class="container">
        <form>
            <div class="form-row">
               <div class="form-group col-md-8">
                   <label >Codigo Producto</label>
                   <input type="text" class="form-control">
               </div>
                <div class="form-group col-md-2"></div>
               <div class="form-group col-md-2">
                  <input type="button" class="btn btn-info" value="Buscar">
               </div>
            </div>
            
        </form>
        
         <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo de Producto</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Detalle</th>
                <th scope="col">Estado</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">P0055</th>
                    <td>Tornillos</td>
                    <td>100</td>
                    <td>2" estrellas</td>
                    <td>Normal</td>
                 </tr>
                 
            </tbody>
        </table>
        <div class="botones1">
            <button class="btn btn-primary">Aceptar</button>   
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
</div>

<%@include file="Reutilizables/footer.jsp" %> 