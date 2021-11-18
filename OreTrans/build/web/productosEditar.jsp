
<%@page import="Modelo.Tipo"%>
<%@page import="Modelo.TipoDAO"%>
<%@page import="Modelo.Categoria"%>
<%@page import="Modelo.CategoriaDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Modelo.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@include file="Reutilizables/headerAdmi.jsp" %>

    <%
        int id = Integer.valueOf(request.getParameter("codigo"));
        List<Producto> Lista;
        ProductoDAO dao = new ProductoDAO();
        Producto p = new  Producto();
        p.setId(id);
        Lista = dao.MostrarId(p);
        
        String valor = request.getParameter("selcategoria");
        int cat = 0;
        if(valor == null){
            cat = 0;
        }else{
            cat = Integer.parseInt(valor);
        }
    %> 
        
    <div id="producto">
       
        <div class="registro">
            <%
                 for(Producto e:Lista){
             %>
            <form action="" method="POST">
                <div class="container">
                    
                    <div class="imagen">
                        <img src="ProductoIMG?id=<%=e.getId()%>"  height="180px" alt=""/>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-2">
                          <label for="txtid">ID</label>
                          <input type="text" class="form-control" name="txtid" value="<%=e.getId()%>" required="">
                        </div>
                        <div class="form-group col-md-10">
                          <label for="txtnombre">Nombre</label>
                          <input type="text" class="form-control" name="txtnombre" value="<%=e.getNombre()%>" required="">
                        </div>
                     </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                          <label for="txtdescripcion">Descripcion</label>
                          <input type="text" class="form-control" name="txtdescripcion" value="<%=e.getDescripcion()%>" required="">
                        </div>
                     </div>
                     <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtcategoria">Tipo</label>
                            <div id="divcategoria2">
                                <select class="form-control" id="selcategoria" name="selcategoria" onchange="funMarca()">
                                    <option value="<%=e.getId_tipo()%>"><%=e.getNombre_tipo()%></option>
                                    <%
                                        TipoDAO daoM = new TipoDAO();
                                        List<Tipo> ListaM = daoM.MostrarCat();
                                        for(Tipo m:ListaM){
                                    %>
                                    <option value="<%=m.getId()%>"><%=m.getNombre()%></option>
                                    <% } %>
                                   
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtmarca">Categoria</label>
                            <div id="divmarca2">
                                <select class="form-control" id="selmarca" name="selmarca">
                                     <option value="<%=e.getId_categoria()%>"><%=e.getNombre_categoria()%></option>
                                    <%
                                        CategoriaDAO daoC = new CategoriaDAO();
                                        List<Categoria> ListaC = daoC.MostrarMar(cat);
                                        for(Categoria q:ListaC){ 
                                    %>
                                    <option value="<%=q.getId()%>"><%=q.getNombre()%></option>
                                    <% } %>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtprecio">Precio</label>
                             <input type="number" class="form-control" name="txtprecio" pattern="[0-9]+" value="<%=e.getPrecio()%>" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtstock">Cantidad</label>
                            <input type="number" class="form-control" name="txtstock" pattern="[0-9]+" value="<%=e.getStock()%>" required="">
                        </div>
                    </div>
                    <!--
                    <div class="form-group">
                        <div class="form-group col-md-12">
                            <label>Seleccione la imagen <i class="fas fa-images"></i></label>
                            <input type="file" class="form-control-file" name="fileFoto">
                            <p>Formato de imagen PNG</p>
                        </div>    
                    </div>
                    -->
                    <div class="form-row">
                        <input type="submit" class="btnRegistrar btn btn-info" name="btnGuardar" value="Guardar"/>
                    </div><br>
                    <div class="form-row">
                        <input type="button" class="btnSalir btn btn-danger" onclick="location.href='productos.jsp'" value="Salir"/>
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
            String descripcion = request.getParameter("txtdescripcion");
            Double precio = Double.parseDouble(request.getParameter("txtprecio"));
            int stock = Integer.parseInt(request.getParameter("txtstock"));
            int scat = Integer.parseInt(request.getParameter("selcategoria"));
            int smar = Integer.parseInt(request.getParameter("selmarca"));
            
            sta.executeUpdate("update productos set id_tipo='"+smar+"',id_categoria='"+scat+"',nombre='"+nombre+"',descripcion='"+descripcion+"',precio='"+precio+"',stock='"+stock+"' where id='"+id+"'");
            request.getRequestDispatcher("productos.jsp").forward(request, response);

        }
    %>

<%@include file="Reutilizables/footer.jsp" %>