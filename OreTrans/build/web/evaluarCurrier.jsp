<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="evaluarCurrier">
    
    <div class="container">
         <form>
            <div class="form-row">
               <div class="form-group col-md-5">
                   <label >Codigo</label>
                   <input type="text" class="form-control">
               </div>
               <div class="form-group col-md-5">
                   <label >Empresa de envio</label>
                   <select class="form-control">
                       <option>Globo</option>
                       <option>Servis Plas</option>
                       <option>Bets</option>
                   </select>
               </div>
            </div>
             <div class="form-row">
               <div class="form-group col-md-5">
                   <label >Tiempo Envio</label>
                   <input type="text" class="form-control">
               </div>
               <div class="form-group col-md-5">
                   <label >Pedido</label>
                   <input type="text" class="form-control">
               </div>
                 <div class="form-group col-md-1"></div>
                 <div class="form-group col-md-1">
                     <input type="button" class="btn btn-info" value="Buscar">
                 </div>
            </div>
        </form>
        
        
         <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Fecha</th>
                <th scope="col">Codigo producto</th>
                <th scope="col">Producto</th>
                <th scope="col">Stock</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>20/07/2020</td>
                    <td>P0055</td>
                    <td>Tornillos</td>
                    <td>20</td>
                 </tr>
                 
            </tbody>
        </table>
        
         <br><br>
         <form>
            <div class="form-row">
               <div class="form-group col-md-5">
                   <label >Cantidad</label>
                   <input type="text" class="form-control">
               </div>
               <div class="form-group col-md-5">
                   <label >Precio Cantidad S./</label>
                    <input type="text" class="form-control">
               </div>
            </div>
             <div class="alert alert-primary" role="alert">
                NOTA: El precio por cantidad es de 25 productos.
              </div>
             <div class="form-row">
               <div class="form-group col-md-5">
                   <label >Precio de envio</label>
                   <input type="text" class="form-control">
               </div>
             </div>
         </form>
         <div class="botones1">
            <button class="btn btn-primary">Aceptar</button> 
            <button class="btn btn-info">Nuevo</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
        
        
        
    </div>
    
</div>

<%@include file="Reutilizables/footer.jsp" %> 