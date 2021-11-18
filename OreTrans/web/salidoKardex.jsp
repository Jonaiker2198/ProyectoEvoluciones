<%@include file="Reutilizables/headerAdmi.jsp" %> 

<div id="salidaKardex">
    
    <div class="container">
         <form>
            <div class="form-row">
               <div class="form-group col-md-6">
                   <label >Codigo de Reporte</label>
                   <input type="email" class="form-control">
               </div>
               <div class="form-group col-md-6">
                  <label>Fecha</label>
                    <input type="date" class="form-control">
               </div>
            </div>
           
            <div class="form-row">
               <div class="form-group col-md-8">
                   <label>Codigo salida:</label>
                <input type="text" class="form-control">
               </div>
                <div class="form-group col-md-2"></div>
               <div class="form-group col-md-2">
                   <input type="button" class="btn btn-info" value="Buscar formato de salida">
               </div>
            </div>
             
           <div class="form-row">
               <div class="form-group col-md-6">
                   <label >Detalle</label>
                   <input type="text" class="form-control">
               </div>
               <div class="form-group col-md-6">
                  <label>Stock Actual</label>
                    <input type="number" class="form-control">
               </div>
            </div>
             <div class="form-row">
               <div class="form-group col-md-6">
                   <label >Cantidad de salida</label>
                   <input type="text" class="form-control">
               </div>
            </div>
         </form>
        <button class="btn btn-secondary">Agregar</button>
        
         <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo Kardex</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Cantidad de salida</th>
                <th scope="col">Stock Actual</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">P0025</th>
                    <td>Abrazaderas</td>
                    <td>100</td>
                    <td>180</td>
                 </tr>
                 <tr>
                    <th scope="row">P0026</th>
                    <td>Filtros</td>
                    <td>40</td>
                    <td>580</td>
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