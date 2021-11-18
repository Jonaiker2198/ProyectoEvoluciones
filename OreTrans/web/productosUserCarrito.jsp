<%-- 
    Document   : productosUserCarrito
    Created on : 11/06/2020, 11:47:07 AM
    Author     : javie
--%>
<%@include file="Reutilizables/headerUser.jsp" %> 

<script>
    function retirar(codr){
        datos = {codi: codr};
        $.ajax({
            data: datos,
            type: 'POST',
            url: "bandejaQuita.jsp",
            success: function (respuesta) {
                $.ajax({
                    type: 'POST',
                    url: "bandejaProductoTodo.jsp",
                    success: function (rst) {
                        document.getElementById("divquita").innerHTML=rst;
                    } 
                });
            }
        });
    }
    
    function disminuir(codr){
        datos = {codi: codr};
        $.ajax({
            data: datos,
            type: 'POST',
            url: "bandejaDisminuye.jsp",
            success: function (respuesta) {
                $.ajax({
                    type: 'POST',
                    url: "bandejaProductoTodo.jsp",
                    success: function (rst) {
                        document.getElementById("divquita").innerHTML=rst;
                    } 
                });
            }
        });
    }
</script>

    <div id="productoUser">

        <div class="bandeja">
            
            <div id="divquita">
                <jsp:include page="bandejaProductoTodo.jsp" />
            </div>
            
            <div class="btnRegresar">
                <input type="button" class="b1 btn btn-outline-info" onclick="location.href='productosUser.jsp'" value="Regresar">
                <input type="button" class="b2 btn btn-outline-success" onclick="location.href='solicitudCompra.jsp'" value="Solicitar">
            </div>
        </div>
            
    </div>
  
<%@include file="Reutilizables/footer.jsp" %>  


