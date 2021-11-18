<%-- 
    Document   : header
    Created on : 01/06/2020, 07:24:59 PM
    Author     : javie
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.PersonaDAO"%>
<%@page import="Modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="estilos/headerFotters.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/principalUsers.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/productosUsers.css" rel="stylesheet" type="text/css"/>
    <link href="estilos/solicitudCompra.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>OreTrans</title>
    
    <link rel="icon" type="" href="icons/logooretrans.png">
    
    <script src="jquery.js" type="text/javascript"></script>
    
  </head>
  <body class="body">
      
      <header class="header">
            <nav class="navbar navbar-light">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a href="principalUser.jsp">
                            <img src="icons/logooretrans2.png" alt="" width="90px"/>
                        </a>
                    </li>
                </ul>
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/productosUser.jsp"><img src="icons/nuevoproducto.png" width="28px"> Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../OreTrans/solicitudCompraMia.jsp"><img src="icons/solicituscompra.png" width="28px"> Mis compras</a>
                    </li>
                    <li class="nav-item dropdown">
                        <div class="dropdown">
                        <a class="btn btn-info" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-bars"></i>
                        </a>
                        <div class="dropdown-user dropdown-menu dropdown-menu-right">
                            <div class="datos">
                                <p>${correo}</p>
                            </div>
                            <a class="dropdown-item" href="index.jsp"><img src="icons/salir.png" width="22px" align="center"> Salir</a>
                        </div>
                      </div>
                    </li>
                </ul>
            </nav>
        </header>
