<%@include file="Reutilizables/headerAdmi.jsp" %> 

<div id="generarOrdenCompra">
    
    <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label >Codigo de Compra</label>
                    <input type="email" class="form-control">
                </div>
                <div class="form-group col-md-6">
                    <label>Fecha</label>
                    <input type="date" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label>Proveedor</label>
                <input type="text" class="form-control">
            </div>
           
          </form>
        <br><br>
        
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Codigo producto</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Detalle</th>
                <th scope="col">Marca</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Moineda</th>
                <th scope="col">Precio unitario</th>
                <th scope="col">Valor</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">P0025</th>
                    <td>Abrazaderas</td>
                    <td>2/4 con 2metros</td>
                    <td>Apolo</td>
                    <td>50</td>
                    <td>Soles</td>
                    <td>12</td>
                    <td>600</td>
                 </tr>
              <tr>
                    <th scope="row">P0028</th>
                    <td>Filtrp</td>
                    <td>Filtro de concerd</td>
                    <td>Volvo</td>
                    <td>30</td>
                    <td>Soles</td>
                    <td>120</td>
                    <td>3600</td>
                 </tr>
            </tbody>
        </table>
        
         <div class="botones1">
            <button class="btn btn-primary">Importar</button>
            <button class="btn btn-info">Guardar Orden</button>
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
    
</div>
<%@include file="Reutilizables/footer.jsp" %> 
