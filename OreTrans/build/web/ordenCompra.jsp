<%@include file="Reutilizables/headerAdmi.jsp" %> 

<div id="ordenCompra">
    <div class="container">
        <div class="dato">
            <label>Ingrese sus datos:</label>
            <input type="text" class="form-control" />
            <br>
            <div class="dato1">
                <input type="radio" />
                <label>ID Compra</label>
            </div>
            <div class="dato2">
                <input type="radio" />
                <label>Proveedor</label>
            </div>
        </div>
        <br><br><br><br>
        
        <table class="table">
            <thead class="thead-light">
              <tr>
                <th scope="col">ID Comprador</th>
                <th scope="col">Proveedor</th>
                <th scope="col">Fecha</th>
                <th scope="col">Items</th>
                <th scope="col">Modena</th>
                <th scope="col">Valor</th>
              </tr>
            </thead>
            <tbody>
                <tr>
                <th scope="row">C0025</th>
                <td>Consorcio Karlos S.A.C.</td>
                <td>25/04/2020</td>
                <td>2</td>
                <td>USD</td>
                <td>1500</td>
              </tr>
              <tr>
                <th scope="row">C0026</th>
                <td>Industria Trebol</td>
                <td>30/04/2020</td>
                <td>5</td>
                <td>Soles</td>
                <td>2500</td>
              </tr>
              <tr>
                <th scope="row">C0027</th>
                <td>Consorcio Karlos S.A.C.</td>
                <td>05/05/2020</td>
                <td>30</td>
                <td>USD</td>
                <td>1000</td>
              </tr>
            </tbody>
        </table>
        
        <div class="botones1">
            <button class="btn btn-info">Generar nueva orden de compra</button>
            <button class="btn btn-success">Modificar</button>
            <button class="btn btn-primary">Exportar</button>
            <button class="btn btn-danger">Cancelar</button>
        </div>
        <br><br><br>
        <button class="btn btn-secondary">Ver detalle</button>
    </div>
    
</div>


<%@include file="Reutilizables/footer.jsp" %> 