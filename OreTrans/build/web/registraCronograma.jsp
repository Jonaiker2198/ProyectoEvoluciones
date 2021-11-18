<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="registraCronograma">
    
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
                <div class="form-group col-md-5">
                    <label >Area</label>
                    <select class="form-control">
                        <option>Almacen</option>
                    </select>
                </div>
            </div>
            <br>
            <div class="form-row">
                    <div class="form-group col-md-12">
                        <label >Observaciones: </label>
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

