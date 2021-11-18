<%@include file="Reutilizables/headerAdmi.jsp" %> 

<div id="salidaAlmacen">
    <div class="container">
         <form>
           <div class="form-row">
               <div class="form-group col-md-8">
                   <label >Codigo de Reporte</label>
                   <input type="email" class="form-control">
               </div>
           </div>
            <div class="form-row">
               <div class="form-group col-md-8">
                   <label>Fecha</label>
                <input type="date" class="form-control">
               </div>
                <div class="form-group col-md-2"></div>
               <div class="form-group col-md-2">
                   <input type="button" class="btn btn-info" value="Buscar producto">
               </div>
           </div>
             
             <div class="form-row">
               <div class="form-group col-md-8">
                   <label >Cantidad</label>
                   <input type="number" class="form-control">
               </div>
           </div>
             <div class="form-row">
               <div class="form-group col-md-8">
                   <label>Entregado a:</label>
                <input type="text" class="form-control">
               </div>
                <div class="form-group col-md-2"></div>
               <div class="form-group col-md-2">
                   <input type="button" class="btn btn-info" value="Buscar Personal">
               </div>
           </div>
          
         </form>
        
         
        <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo Producto</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Stock Acutal</th>
                <th scope="col">Detalle</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">P0025</th>
                    <td>Abrazaderas</td>
                    <td>100</td>
                    <td>2" Estrellas</td>
                 </tr>
            </tbody>
        </table>
        <div class="botones1">
            <button class="btn btn-info">Guardar</button>
            <button class="btn btn-primary">Aceptar</button>            
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
</div>

<%@include file="Reutilizables/footer.jsp" %> 
