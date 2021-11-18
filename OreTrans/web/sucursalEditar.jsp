<%-- 
    Document   : sucursalEditar
    Created on : 10/06/2020, 10:49:07 PM
    Author     : javie
--%>

<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>
<%-- 
    Document   : currierEditar
    Created on : 07/06/2020, 09:23:38 PM
    Author     : javie
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   

    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        List<Sucursal> Lista;
        SucursalDAO dao = new SucursalDAO();
        Sucursal pv = new  Sucursal();
        pv.setId(id);
        Lista = dao.MostrarId(pv);
    %> 

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Sucursal</h2>
        </div>
        
        <div class="container">
            
            <%
                 for(Sucursal e:Lista){
             %>
            
            <form action="" method="post">
                <div class="form-row">
                    <div class="form-group col-md-2">
                      <label for="txtrazon">Id</label>
                      <input type="text" class="form-control" name="txtid" value="<%=e.getId()%>" required="">
                    </div>
                    <div class="form-group col-md-5">
                      <label for="txtnombre">Nombre</label>
                      <input type="text" class="form-control" name="txtnombre" value="<%=e.getNombre()%>" required="">
                    </div>
                    <div class="form-group col-md-5">
                      <label for="txtdireccion">Direccion</label>
                      <input type="text" class="form-control" name="txtdireccion" value="<%=e.getDireccion()%>" required="">
                    </div>
                 </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txttelefono">Telefono</label>
                      <input type="text" class="form-control" name="txttelefono" maxlength="9" pattern="[0-9]+" value="<%=e.getTelefono()%>" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtcorreo">Direccion</label>
                      <input type="email" class="form-control" name="txtcorreo" value="<%=e.getCorreo()%>" required="">
                    </div>
                </div>
                                
                <div class="form-row">
                    <input type="submit" class="btnRegistrar btn btn-info" name="btnActualizar" value="Actualizar">
                </div><br>
                <div class="form-row">
                    <input type="button" class="btnSalir btn btn-danger" onclick="location.href='sucursal.jsp'" value="Atras"/>
                </div>

            </form>
            
            <%
               }
            %>
             
        </div>
        <%
            Connection cnx=null;
            Statement sta=null;
            ResultSet rs=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/oretrans?user=root&password"); 
                sta=cnx.createStatement();
            }catch(Exception e){}
            
        if(request.getParameter("btnActualizar")!=null){
            String nom = request.getParameter("txtnombre");
            String dir = request.getParameter("txtdireccion");
            String cel = request.getParameter("txttelefono");
            String cor = request.getParameter("txtcorreo");
            
            sta.executeUpdate("update sucursal set nombre='"+nom+"',direccion='"+dir+"',telefono='"+cel+"',correo='"+cor+"' where id='"+id+"'");
            request.getRequestDispatcher("sucursal.jsp").forward(request, response);

        }
    %>
        
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>