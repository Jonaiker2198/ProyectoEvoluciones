<%-- 
    Document   : index
    Created on : 14/05/2020, 11:33:04 AM
    Author     : Javier Galarza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="estilos/indexx.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
    
    <link rel="icon" type="" href="icons/logooretrans.png">
    
    <title>Home</title>
  </head>
  <body class="body">
    
    
    <div class="cabecera">
        <img src="icons/logooretrans2.png" alt=""/>
        <input type="button" class="btn btn-danger" onclick="location.href='login.jsp'" value="Sesion Admi"/>
        <input type="button" class="btn btn-info" onclick="location.href='loginUser.jsp'" value="Sesion User"/>
    </div>
    
    <div id="general">
        <h1>Somos OreTrans</h1>
        <h2>Empresa dedicada al transporte terrestre de carga excepcional y maquinaria pesada a nivel nacional e internacional.</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="contenedor">
                    <div class="atras botones"> &#60 </div>
                    <div class="adelante botones"> &#62 </div>
                    <img src="imagenes/nuevo1.jpg" alt="" id="imagen" />

                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="fot col-md-4">
                        <img src="imagenes/foto6.jpg" alt=""/>
                    </div>
                    <div class="fot col-md-4">
                        <img src="imagenes/foto3.jpg" alt=""/>
                    </div>
                    <div class="fot col-md-4">
                        <img src="imagenes/foto7.jpg" alt=""/>
                    </div>
                    <div class="fot col-md-6">
                        <img src="imagenes/foto4.jpg" alt=""/>
                    </div>
                    <div class="fot col-md-6">
                        <img src="imagenes/foto8.jpg" alt=""/>
                    </div>
                    <div class="dia col-md-4">
                        <h4><i class="fas fa-location-arrow"></i> Ubicanos</h4>
                        <p>Av. Nestor Gambetta 480 Callao</p>
                    </div>
                    <div class="dia col-md-4" style="background: #CECECE;">
                        <h4><i class="fas fa-phone"></i> Telefono</h4>
                        <p>429 9369</p>
                        <p>453 1111</p>
                    </div>
                    <div class="dia col-md-4">
                        <h4><i class="fas fa-envelope-open-text"></i> Correo</h4>
                        <p>comercial@oretrans.com.pe</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
        
        
    <script src="js/main.js" type="text/javascript"></script>
      
      
    <script src="https://kit.fontawesome.com/437756fd95.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>
