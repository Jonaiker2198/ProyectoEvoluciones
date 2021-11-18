<%-- 
    Document   : editar
    Created on : 01/06/2020, 10:22:08 PM
    Author     : javie
--%>


<%@page import="Modelo.SucursalDAO"%>
<%@page import="Modelo.Sucursal"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.PersonaDAO"%>
<%@page import="Modelo.Persona"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>

    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        List<Persona> Lista;
        PersonaDAO dao = new PersonaDAO();
        Persona p = new  Persona();
        p.setId(id);
        Lista = dao.MostrarId(p);
    %>    

    <div id="principal">
       
        <div class="registro">
            
            <%
                 for(Persona e:Lista){
             %>
            <form action="" method="POST">
                <div class="container">
                    <div class="imagen">
                        <img src="ControlerIMG?id=<%=e.getId()%>" class="imgRedonda" alt=""/>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-2">
                          <label for="txtid">Id</label>
                          <input type="text" class="form-control" name="txtid" value="<%=e.getId()%>" >
                        </div>
                        <div class="form-group col-md-5">
                          <label for="txtnombre">Nombre</label>
                          <input type="text" class="form-control" name="txtnombre" value="<%=e.getNombre()%>" required="">
                        </div>
                        <div class="form-group col-md-5">
                          <label for="txtapellidos">Apellidos</label>
                          <input type="text" class="form-control" name="txtapellidos" value="<%=e.getApellidos()%>" required="">
                        </div>
                     </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txtdni">Dni</label>
                          <input type="number" class="form-control" name="txtdni" maxlength="8" value="<%=e.getDni()%>" required="">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtnacimiento">Nacimiento</label>
                          <input type="date" class="form-control" name="txtnacimiento" value="<%=e.getNacimiento()%>" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txttelefono">Telefono</label>
                          <input type="number" class="form-control" name="txttelefono" maxlength="9" value="<%=e.getTelefono()%>" required="">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtcorreo">Correo</label>
                          <input type="email" class="form-control" name="txtcorreo" value="<%=e.getCorreo()%>" required="">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                          <label for="txtpassword">Password</label>
                          <input type="text" class="form-control" name="txtpassword" value="<%=e.getPassword()%>" required="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtsuc">Sucursal</label>
                            <select class="form-control"  name="txtsuc">
                                <%
                                    List<Sucursal> Listas;
                                    SucursalDAO daos = new SucursalDAO();
                                    Listas = daos.Listar();
                                    for(Sucursal x:Listas){
                                %>
                                <option value="<%=x.getId()%>"><%=x.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtrol">Rol</label>
                            <select class="form-control"  name="txtrol">
                                <option value="user"><%=e.getRol()%></option>
                                <option value="admi">Admi</option>
                                <option value="user">User</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <input type="submit" class="btnRegistrar btn btn-info" name="btnGuardar" value="Guardar"/>
                    </div><br>
                    <div class="form-row">
                        <input type="button" class="btnSalir btn btn-danger" onclick="location.href='usuarios.jsp'" value="Atras"/>
                    </div>
                    
                    
                </div>
                 
            </form>
            
            <%
                }
            %>
                  
        </div>
       
        
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
            
        if(request.getParameter("btnGuardar")!=null){
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellidos");
            String dni = request.getParameter("txtdni");
            String nacimiento = request.getParameter("txtnacimiento");
            String telefono = request.getParameter("txttelefono");
            String correo = request.getParameter("txtcorreo");
            String contraseña = request.getParameter("txtpassword");
            int sucursal = Integer.parseInt(request.getParameter("txtsuc"));
            String rol = request.getParameter("txtrol");
            
            sta.executeUpdate("update empleados set nombre='"+nombre+"',id_sucursal='"+sucursal+"',apellidos='"+apellido+"',dni='"+dni+"',nacimiento='"+nacimiento+"',telefono='"+telefono+"',correo='"+correo+"',password='"+contraseña+"',rol='"+rol+"' where id='"+id+"'");
            request.getRequestDispatcher("usuarios.jsp").forward(request, response);

        }
    %>

<%@include file="Reutilizables/footer.jsp" %>