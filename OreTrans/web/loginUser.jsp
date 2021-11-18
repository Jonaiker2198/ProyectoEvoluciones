<%-- 
    Document   : login
    Created on : 14/05/2020, 11:36:11 AM
    Author     : Javier Galarza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="estilos/login.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="icon" type="" href="icons/logooretrans.png">
    
    <title>Login</title>
  </head>
  <body>
    
      <div class="container-fluid">
            <div class="row">
                <div id="titulo">
                    <a href="index.jsp">Ore Trans</a>
                    <p>Almacen a servicio de toda nuestra comunidad Ore Trans</p>
                </div>
                
                <div id="logo">
                    <img src="icons/users.png" alt=""/>
                </div>
                
                <form id="ingresar" action="ControladorUser" method="post">                                
                    <div class="form-group" >
                        <label for="txtcorreo">Usuario</label>
                        <div class="Usuario">
                            <input type="text" name="txtcorreo" id="correo" class="form-control" style="padding-left: 40px" placeholder="Usuario">
                            <i class="fas fa-user" aria-hidden="true"></i>
                        </div> 
                    </div>
                    
                    <div class="form-group">
                        <label for="txtpassword">Contraseña</label>
                        <div class="Password">
                            <input type="password" name="txtpassword" id="password" class="form-control" style="padding-left: 40px" placeholder="Contraseña">
                            <i class="fas fa-lock"></i>
                        </div>
                    </div>
                    <div class="botones form-group">
                        <input type="submit" class="btn btn-primary btn-lg btn-block" name="btnIngresar" value="Ingresar"></input>
                        <input type="button"  class="btn btn-danger btn-lg btn-block" onclick="location.href='index.jsp'" value="Salir"></input>
                    </div>
                    <div>
                        <p class="warning" id="warning"></p>
                    </div>
                    
                </form>
                
                <form action="dos">
                    
                </form>
                
            </div>
        </div>
      
       <!--<script src="js/login.js" type="text/javascript"></script>-->
      
        <!--Libreria de icons-->
        <script src="https://kit.fontawesome.com/437756fd95.js" crossorigin="anonymous"></script>
      
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>
