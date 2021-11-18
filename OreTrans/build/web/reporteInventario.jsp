<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="reporteInventario">
    
    <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo de reporte</label>
                    <input type="text" class="form-control">
                </div>
                <div class="form-group col-md-5"></div>
                <div class="form-group col-md-2">
                    <input type="button" class="btn btn-info" value="Buscar">
                </div>
            </div>
        </form>
        
           <br><br>
           <h5 style="color: red">Ingreso</h5>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Fecha</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>Tornillos</td>
                    <td>150</td>
                    <td>20/07/2020</td>
                 </tr>
                 
            </tbody>
        </table>
           
            <br><br>
            <h5 style="color: green">Salida</h5>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Codigo Ingreso</th>
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Stock</th>
                <th scope="col">Fecha</th>
                <th><input type="button" class="btn btn-secondary" value="Agregar"></th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <th scope="row">01542</th>
                    <td>Tornillos</td>
                    <td>150</td>
                    <td>350</td>
                    <td>20/07/2020</td>
                 </tr>
                  <tr>
                    <th scope="row">02056</th>
                    <th scope="row">01542</th>
                    <td>Tornillos</td>
                    <td>190</td>
                    <td>510</td>
                    <td>20/07/2020</td>
                 </tr>
                 
            </tbody>
        </table>
        
        <div class="botones1">
            <button class="btn btn-primary">Grabar</button> 
            <button class="btn btn-info">Registrar</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
        
        
    </div>
        
</div>

<%@include file="Reutilizables/footer.jsp" %>  