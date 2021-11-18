<%-- 
    Document   : headerAdmi
    Created on : 01/06/2020, 07:30:10 PM
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="estilos/headerFotters.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/registros.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/usuario.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/principalAdmin.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/proveedores.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/productos.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/solicitudCompra.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/nuevos.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="icon" type="" href="icons/logooretrans.png">
    
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="jquery.js" type="text/javascript"></script>
    <title>OreTrans</title>
  </head>
  <body class="body">
    
      <header class="header">
            <nav class="navbar navbar-light fixed-top">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a href="principalAdmi.jsp">
                             <img src="icons/logooretrans2.png" alt="" width="90px"/>
                        </a>
                    </li>
                </ul>
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/usuarios.jsp"><img src="icons/formulario.png" width="28px"></i> Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/proveedores.jsp"><img src="icons/nuevoproveedor.png" width="28px"> Proveedores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/currier.jsp"><img src="icons/currier.png" width="28px"> Currier</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/sucursal.jsp"><img src="icons/sucursal.png" width="28px"> Sucursal</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/productos.jsp"><img src="icons/nuevoproducto.png" width="28px"> Productos</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="SolicitudCompraAdmi.jsp"><img src="icons/solicituscompra.png" width="28px"> Solicitudes de compra</a>
                    </li>
                    <!--
                    <li class="nav-item">
                        <a class="nav-link"href="index.jsp"><img src="icons/salir.png" width="28px"> Salir</a>
                    </li>
                    -->
                       
                    <li class="nav-item dropdown">
                        <div class="dropdown">
                        <a class="btn btn-info" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-bars"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            
                            <a class="dropdown-item" href="generarOrdenCompra.jsp"><img src="icons/ingresoproducto.png" width="22px"> Generar orden de compra</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="ordenCompra.jsp"><img src="icons/abastecimiento.png" width="22px"> Ordene de compra</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="ordenProductosFaltantes.jsp"><img src="icons/memorandum.png" width="22px"> Productos faltantes</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="salidaAlmacen.jsp"><img src="icons/abastecimiento.png" width="22px"> Salida de almancen</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="salidoKardex.jsp"><img src="icons/kardex.png" width="22px"> Kardex</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="buscaSalidaAlmacen.jsp"><img src="icons/abastecimiento.png" width="22px"> Buscar salida de almancen</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="stockProductos.jsp"><img src="icons/kardex.png" width="22px"> Stock de productos</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="evaluarCurrier.jsp"><img src="icons/currier.png" width="28px"> Evaluar Currier</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="ordenEnvio.jsp"><img src="icons/abastecimiento.png" width="22px"> Orden de envio</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="pedidoProducto.jsp"><img src="icons/ingresoproducto.png" width="22px"> Generar pedido prodcutos</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="verificarOrdenEnvio.jsp"><img src="icons/kardex.png" width="22px"> Verificar orden envio</a><div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="verificarPedido.jsp"><img src="icons/kardex.png" width="22px"> Verificar pedido</a><div class="dropdown-divider"></div>
                            
                             <a class="dropdown-item" href="reporteInventario.jsp"><img src="icons/memorandum.png" width="22px"> Reporte de inventario</a><div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="verificarCronograma.jsp"><img src="icons/cronograma.png" width="22px"> Verificar cronograma</a><div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="generarMemorandum.jsp"><img src="icons/memorandum.png" width="22px"> Generar Memorandum</a><div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="registraCronograma.jsp"><img src="icons/cronograma.png" width="22px"> Registra cronograma</a><div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="buscarInventario.jsp"><img src="icons/inventario.png" width="22px"> Buscar inventario</a><div class="dropdown-divider"></div>
                            <!--
                            <a class="dropdown-item" href=""><img src="icons/cronograma.png" width="22px"> Cronograma</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href=""><img src="icons/inventario.png" width="22px"> Inventario</a><div class="dropdown-divider"></div>
                            <a class="dropdown-item" href=""><img src="icons/memorandum.png" width="22px"> Memorandum</a><div class="dropdown-divider"></div>
                            -->
                            <a class="dropdown-item" href="index.jsp"><img src="icons/salir.png" width="22px"> Salir</a>
                        </div>
                      </div>
                    </li>
                   
                </ul>
            </nav>
        </header>
