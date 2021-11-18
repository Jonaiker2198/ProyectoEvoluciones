<%-- 
    Document   : proveedoresEditar
    Created on : 05/06/2020, 05:26:16 PM
    Author     : javie
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="Modelo.ProveedorDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>   

    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        List<Proveedor> Lista;
        ProveedorDAO dao = new ProveedorDAO();
        Proveedor pv = new  Proveedor();
        pv.setId(id);
        Lista = dao.MostrarId(pv);
    %> 

    <div id="proveedor">
        
        <div class="titulo">
            <h2>Proveedores</h2>
        </div>
        
        <div class="container">
            
            <%
                 for(Proveedor e:Lista){
             %>
            
            <form action="" method="post">
                <div class="form-row">
                    <div class="form-group col-md-2">
                      <label for="txtrazon">Id</label>
                      <input type="text" class="form-control" name="txtid" value="<%=e.getId()%>" required="">
                    </div>
                    <div class="form-group col-md-5">
                      <label for="txtrazon">Razon Social</label>
                      <input type="text" class="form-control" name="txtraz" value="<%=e.getRazon_social()%>" required="">
                    </div>
                    <div class="form-group col-md-5">
                      <label for="txtruc">Ruc</label>
                      <input type="text" class="form-control" name="txtruc" maxlength="11" pattern="[0-9]+" value="<%=e.getRuc()%>" required="">
                    </div>
                 </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txttelefono">Telefono</label>
                      <input type="text" class="form-control" name="txttel" maxlength="9" pattern="[0-9]+" value="<%=e.getTelefono()%>" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtdireccion">Direccion</label>
                      <input type="text" class="form-control" name="txtdir" value="<%=e.getDireccion()%>" required="">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="txtcorreo">correo</label>
                      <input type="email" class="form-control" name="txtcor" value="<%=e.getCorreo()%>" required="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="txtrepresentante">Representante</label>
                      <input type="text" class="form-control" name="txtrep" value="<%=e.getRepresentante()%>" required="">
                    </div>
                </div>
                
                <div class="form-row">
                    <input type="submit" class="btnRegistrar btn btn-info" name="btnActualizar" value="Actualizar">
                </div><br>
                <div class="form-row">
                    <input type="button" class="btnSalir btn btn-danger" onclick="location.href='proveedores.jsp'" value="Atras"/>
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
            String razon = request.getParameter("txtraz");
            String ruc = request.getParameter("txtruc");
            String cel = request.getParameter("txttel");
            String dir = request.getParameter("txtdir");
            String cor = request.getParameter("txtcor");
            String rep = request.getParameter("txtrep");
            
            sta.executeUpdate("update proveedores set razon_social='"+razon+"',ruc='"+ruc+"',telefono='"+cel+"',direccion='"+dir+"',correo='"+cor+"',representante='"+rep+"' where id='"+id+"'");
            request.getRequestDispatcher("proveedores.jsp").forward(request, response);

        }
    %>
        
        
    </div>


<%@include file="Reutilizables/footer.jsp" %>