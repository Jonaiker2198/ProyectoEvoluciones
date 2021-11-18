<%@include file="Reutilizables/headerAdmi.jsp" %> 

<div id="ordenProductoFaltante">
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
               <div class="form-group col-md-6">
                   <label>Datos del personal</label>
               <input type="text" class="form-control">
               </div>
               <div class="form-group col-md-6">
                   <label>Ingrese datos</label>
               <input type="text" class="form-control">
               </div>
           </div>
           <div class="row">
                <div class="col-md-2">
                   <input type="radio" />
                   <label>Codigo</label>
                </div>
                <div class="col-md-2">
                   <input type="radio" />
                   <label>Descripcion</label>
                </div>
               <div class="col-md-6"></div>
                <div class="col-md-2">
                    <input type="button" class="btn btn-primary" value="Buscar"/>
                </div>
           </div>
         </form>
        
        <br><br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Detalle</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Cantidad minima</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">P0025</th>
                    <td>Abrazaderas</td>
                    <td>2/4 con 2metros</td>
                    <td>50</td>
                    <td>600</td>
                 </tr>
              <tr>
                    <th scope="row">P0028</th>
                    <td>Filtro</td>
                    <td>Filtro de concerd</td>
                    <td>30</td>
                    <td>3600</td>
                 </tr>
            </tbody>
        </table>
        <button class="btn btn-info">Agregar</button>
        <br><br><br>
        
        <h5>Productos Seleccionados:</h5>
         <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Personal</th>
                <th scope="col">Fecha</th>
                <th scope="col">Codigo producto</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Detalle</th>
                <th scope="col">Cantidad</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Baldeon</th>
                    <td>07/06/2020</td>
                    <td>P12346</td>
                    <td>Filtros</td>
                    <td>Filtro de comep</td>
                    <td>0</td>
                 </tr>
              <tr>
                    <th scope="row">Baldeon</th>
                    <td>07/06/2020</td>
                    <td>P12346</td>
                    <td>Abrazaderas</td>
                    <td>3/2* con otrela</td>
                    <td>0</td>
                 </tr>
            </tbody>
        </table>
        <div class="botones1">
            <button class="btn btn-primary">Exportar Reporte</button>
            <button class="btn btn-info">Guardar</button>
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
    
    
</div>

<%@include file="Reutilizables/footer.jsp" %> 