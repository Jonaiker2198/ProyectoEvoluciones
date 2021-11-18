<%-- 
    Document   : productosGrid
    Created on : 08/06/2020, 10:02:40 PM
    Author     : javie
--%>

<%@page import="Modelo.Producto"%>
<%@page import="Modelo.ProductoDAO"%>
<%@page import="java.util.List"%>
<%
        String scat = request.getParameter("selcategoria");
        String smar = request.getParameter("selmarca");
        
        int ca = 0;
        int ma = 0;
        if(scat == null){
            ca = 0;
        }else{
            ca = Integer.parseInt(scat);
        }
        
        if(smar == null){
            ma = 0;
        }else{
            ma = Integer.parseInt(smar);
        }
        
        List<Producto> Lista;
        ProductoDAO dao = new ProductoDAO();
        Lista = dao.ListarP(ca, ma);
    %>
    
    <%
                    
        for(Producto p:Lista){
    %>
            <div  class="product">
                <div class="imagen">
                    <img src="ProductoIMG?id=<%=p.getId()%>" alt=""/>
                </div>
                <div class="contenido">
                    <h2><%=p.getNombre()%></h2>
                    <h3><%=p.getDescripcion()%></h3>
                    <h5><%=p.getNombre_categoria()%></h5>
                    <% if(p.getStock()>0){ %>
                        <p><%=p.getStock()%> uni.</p>
                    <%}else{%>
                        <p style="color:red">Agotado</p>
                    <% } %>
                </div>
                <div class="boton">
                    <h5 style="color:#006040">S/. <%=p.getPrecio()%></h5>
                    <a href="#" onclick='agregar(<%=p.getId()%>,"<%=p.getNombre()%>",<%=p.getPrecio()%>,"<%=p.getNombre_tipo()%>","<%=p.getNombre_categoria()%>")'><i class="fas fa-plus-circle"></i></a>
                </div>

            </div>
                           
     <%
        }
    %>