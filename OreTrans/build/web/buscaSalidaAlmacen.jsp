<%@include file="Reutilizables/headerAdmi.jsp" %> 


<div id="buscaSalidaAlmacen">
    <div class="container">
        <form>
            <div class="form-row">
               <div class="form-group col-md-8">
                   <label >Ingresa Datos</label>
                   <input type="text" class="form-control">
               </div>
                <div class="form-group col-md-2"></div>
               <div class="form-group col-md-2">
                  <input type="button" class="btn btn-info" value="Buscar">
               </div>
            </div>
            
            <div class="form-row">
               <div class="form-group col-md-2">
                   <input type="radio"> Codigo de salida
               </div>
                <div class="form-group col-md-2">
                   <input type="radio"> Entrega a
               </div>
            </div>
        </form>
        
         <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo de salida</th>
                <th scope="col">Entregado</th>
                <th scope="col">Items</th>
                <th scope="col">Fecha</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">S001</th>
                    <td>Alfredo Baldeon</td>
                    <td>20</td>
                    <td>20/07/2020</td>
                 </tr>
                 <tr>
                    <th scope="row">S002</th>
                    <td>Alaro Torres</td>
                    <td>120</td>
                    <td>21/07/2020</td>
            </tbody>
        </table>
        <div class="botones1">
            <button class="btn btn-primary">Aceptar</button>  
            <button class="btn btn-info">Ver Items</button>  
            <button class="btn btn-success">Imprimir</button>  
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
</div>
<%@include file="Reutilizables/footer.jsp" %> 
