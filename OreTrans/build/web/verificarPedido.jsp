
<%@include file="Reutilizables/headerAdmi.jsp" %>  

<div id="verificarPedido">
    
    <div class="container">
        <form>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label >Codigo de pedido</label>
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
                <th scope="col">Proveedor</th>
                <th scope="col">Fecha</th>
                <th scope="col">Codigo Pedido</th>
                <th scope="col">Sctock</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">02055</th>
                    <td>GLovo</td>
                    <td>20/07/2020</td>
                    <td>00154</td>
                    <td>150</td>
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