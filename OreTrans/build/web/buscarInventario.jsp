<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="reporteInventario">
    
    <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo de reporte</label>
                    <input type="text" class="form-control">
                </div>
                <div class="form-group col-md-5">
                    <label >Encargado</label>
                    <input type="text" class="form-control">
                </div>
                 
            </div>
        </form>
        
            <br><br>
            <div class="row">
                <h5 class="col-md-2" style="color: red">Ingreso</h5>
                <input type="button" class="btn btn-info col-md-2" value="Buscar">
            </div>
            <br>
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
            <div class="row">
                <h5 class="col-md-2" style="color: green">Salida</h5>
                <input type="button" class="btn btn-info col-md-2" value="Buscar">
            </div>
           
            <br>
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Codigo Ingreso</th>
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Stock</th>
                <th scope="col">Fecha</th>
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
            <button class="btn btn-info">Registrar</button> 
            <button class="btn btn-primary">Nuevo</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
        
        
    </div>
        
</div>

<%@include file="Reutilizables/footer.jsp" %>  