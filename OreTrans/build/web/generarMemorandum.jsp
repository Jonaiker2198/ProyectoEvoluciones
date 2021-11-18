<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="generarMemorandum">
    
    <div class="container">
         <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo de pedido</label>
                    <input type="text" class="form-control">
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
                <div class="form-group col-md-2">
                    <label >Para:</label>
                </div>
                <div class="form-group col-md-2">
                    <input type="checkbox">
                    <label >Jefe de Logistica</label>
                </div>
                <div class="form-group col-md-6">
                    <input type="checkbox">
                    <label >Gerente General Administracion y Finanzas</label>
                </div>
            </div>
             
             <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Asunto</label>
                    <input type="text" class="form-control">
                </div>
                 <div class="form-group col-md-5">
                    <label >Cronograma</label>
                    <input type="text" class="form-control">
                </div>
                  <div class="form-group col-md-2">
                    <input type="button" class="btn btn-info" value="Buscar">
                </div>
            </div>
             
         </form>
        
        
           <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Dia</th>
                <th scope="col">Mes</th>
                <th scope="col">Año</th>
                <th scope="col">Area</th>
                <th scope="col">Observacion</th>
                <th scope="col">Estado</th>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>1</td>
                    <td>Enero</td>
                    <td>2020</td>
                    <td>Almacen</td>
                    <td>Se debe piezas</td>
                    <td>Pendiente</td>
                    
                 </tr>
                 
            </tbody>
        </table>
           <br>
            <form>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label >Contenido</label>
                        <textarea style="height: 150px;" class="form-control"></textarea>
                    </div>
                </div>
            </form>
        
           
        <div class="botones1">
            <button class="btn btn-info">Registrar</button> 
            <button class="btn btn-primary">Nuevo</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
           
    </div>
</div>

<%@include file="Reutilizables/footer.jsp" %>  