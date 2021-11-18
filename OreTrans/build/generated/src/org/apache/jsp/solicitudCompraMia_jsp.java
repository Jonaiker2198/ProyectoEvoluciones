package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.util.*;
import java.text.SimpleDateFormat;
import Modelo.SolicitudCompraDAO;
import Modelo.SolicitudCompra;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import Modelo.PersonaDAO;
import Modelo.Persona;

public final class solicitudCompraMia_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Reutilizables/headerUser.jsp");
    _jspx_dependants.add("/Reutilizables/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link href=\"estilos/headerFotters.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/principalUsers.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/productosUser.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/solicitudCompras.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("    <title>Principal</title>\n");
      out.write("    \n");
      out.write("    <script src=\"jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("  <body class=\"body\">\n");
      out.write("      \n");
      out.write("      <header class=\"header\">\n");
      out.write("            <nav class=\"navbar navbar-light\">\n");
      out.write("                <ul class=\"nav nav-pills\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a href=\"principalUser.jsp\">\n");
      out.write("                             <img src=\"icons/logo.jpeg\" width=\"100px\">\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"nav nav-pills\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/productosUser.jsp\"><img src=\"icons/nuevoproducto.png\" width=\"28px\"> Productos</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/solicitudCompraMia.jsp\"><img src=\"icons/solicituscompra.png\" width=\"28px\"> Mis compras</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <div class=\"dropdown\">\n");
      out.write("                        <a class=\"btn btn-info\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                          <i class=\"fas fa-bars\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-user dropdown-menu dropdown-menu-right\">\n");
      out.write("                            <div class=\"datos\">\n");
      out.write("                                <img src=\"imagenes/foto1.png\" alt=\"\"/>\n");
      out.write("                                <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${correo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"index.jsp\"><img src=\"icons/salir.png\" width=\"22px\" align=\"center\"> Salir</a>\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write(' ');
      out.write('\n');

    List<SolicitudCompra> Lista;
    SolicitudCompraDAO dao = new SolicitudCompraDAO();
    Lista = dao.Listar();
    Date date = new Date();
    SimpleDateFormat ft =  new SimpleDateFormat ("yyyy-MM-dd");
    String dateActual = ft.format(date);

      out.write("\n");
      out.write("    \n");
      out.write("    <div id=\"solicitud\">\n");
      out.write("        <table class=\"table\">\n");
      out.write("            <thead class=\"thead-dark\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\">ID</th>\n");
      out.write("                    <th scope=\"col\">Producto</th>\n");
      out.write("                    <th scope=\"col\">Tipo</th>\n");
      out.write("                    <th scope=\"col\">Categoria</th>\n");
      out.write("                    <th scope=\"col\">Cantidad</th>\n");
      out.write("                    <th scope=\"col\">Precio</th>\n");
      out.write("                    <th scope=\"col\">Sucursal</th>\n");
      out.write("                    <th scope=\"col\">Fecha emitida</th>\n");
      out.write("                    <th scope=\"col\">Fecha entrega</th>\n");
      out.write("                    <th scope=\"col\">Estado</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody align=\"center\">\n");
      out.write("                ");

                    for(SolicitudCompra e:Lista){
                    String dateE = e.getEstado();

                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"row\">");
      out.print(e.getId());
      out.write("</th>\n");
      out.write("                    <td>");
      out.print(e.getNombre_producto());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getNombre_tipo());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getNombre_categoria());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getCantidad_total());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getPrecio_total());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getNombre_sucursal());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getFecha_emision());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getFecha_entrega());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(e.getEstado());
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("         </table>\n");
      out.write("    </div>\n");

            Connection cnx=null;
            Statement sta=null;
            ResultSet rs=null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/oretrans?user=root&password"); 
            sta=cnx.createStatement();
            
                if(dateE.equals(dateActual)){
                    sta.executeUpdate("update solicitud_productos set fecha_entrega='Finzalizada' where id='"+e.getId()+"'");
                    request.getRequestDispatcher("usuarios.jsp").forward(request, response);

                }
            }
    
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <footer id=\"footer\">\n");
      out.write("                <p>Desarrollado por Alumnos UPN &COPY; 2020</p>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <script src=\"https://kit.fontawesome.com/437756fd95.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>");
      out.write(' ');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
