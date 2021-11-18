<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="verificarCronograma">
    
 <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo</label>
                    <input type="text" class="form-control">
                </div>
                <div class="form-group col-md-5"></div>
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
           
           
        <div class="botones1">
            <button class="btn btn-primary">Aceptar</button> 
            <button class="btn btn-info">Registrar</button> 
            <button class="btn btn-danger">Cancelar</button>
        </div>
    </div>
</div>


<%@include file="Reutilizables/footer.jsp" %>  