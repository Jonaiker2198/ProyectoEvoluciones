<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="evaluarCurrier">
    
    <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo de pedido</label>
                    <input type="text" class="form-control">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label >Proveedor: </label>
                </div>
                <div class="form-group col-md-2">
                    <input type="radio">
                    <label >Empresa Matriz</label>
                </div>
                <div class="form-group col-md-2">
                    <input type="radio">
                    <label >Sucursal</label>
                </div>
            </div>
            
              <div class="form-row">
                 <div class="form-group col-md-3">
                     <label >Fecha de envio:</label>
                 </div>
               <div class="form-group col-md-3">
                   <label >Dia</label>
                  <select class="form-control">
                       <option>1</option>
                       <option>2</option>
                       <option>3</option>
                   </select>
               </div>
               <div class="form-group col-md-3">
                   <label >Mes</label>
                   <select class="form-control">
                       <option>Enero</option>
                       <option>Marza</option>
                       <option>Abril</option>
                   </select>
               </div>
                 <div class="form-group col-md-3">
                     <label >AÑo</label>
                  <select class="form-control">
                       <option>2020</option>
                   </select>
                 </div>
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Producto</label>
                    <input type="text" class="form-control">
                </div>
            </div>
            
        </form>
        
         <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Area</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>Tornillos</td>
                    <td>0</td>
                    <td>Ferretera</td>
                 </tr>
                 
            </tbody>
        </table>
         <br>
         <form>
              <div class="form-row">
               <div class="form-group col-md-5">
                   <label >Cantidad a pedir</label>
                   <input type="text" class="form-control">
               </div>
                <div class="form-group col-md-5"></div>
                <div class="form-group col-md-2">
                    <input type="button" class="btn btn-info" value="Agregar">
                </div>
            </div>
         </form>
         <br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                 <th scope="col">Codigo de Producto</th>
                <th scope="col">Fecha</th>
                <th scope="col">Producto</th>
                <th scope="col">Stock</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>P0122</td>
                    <td>20/07/2020</td>
                    <td>Tornillos</td>
                    <td>50</td>
                 </tr>
                 
            </tbody>
        </table>
        
        <div class="botones1">
            <button class="btn btn-primary">Grabar</button> 
            <button class="btn btn-info">Nuevo</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
        
    </div>
</div>


<%@include file="Reutilizables/footer.jsp" %>  