package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Producto;
import java.util.List;
import Modelo.SolicitudProDAO;

public final class productosBandeja_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Reutilizables/headerAdmi.jsp");
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link href=\"estilos/headerFotter.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/registros.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/usuarios.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/principalAdmi.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/proveedor.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"estilos/producto.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <script src=\"jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("    <title>Principal</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    \n");
      out.write("      <header class=\"header\">\n");
      out.write("            <nav class=\"navbar navbar-light\">\n");
      out.write("                <ul class=\"nav nav-pills\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a href=\"principalAdmi.jsp\">\n");
      out.write("                             <img src=\"icons/logo.jpeg\" width=\"100px\">\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"nav nav-pills\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/usuarios.jsp\"><img src=\"icons/formulario.png\" width=\"28px\"></i> Usuarios</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/proveedores.jsp\"><img src=\"icons/nuevoproveedor.png\" width=\"28px\"> Proveedores</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/currier.jsp\"><img src=\"icons/currier.png\" width=\"28px\"> Currier</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../OreTrans/productos.jsp\"><img src=\"icons/nuevoproducto.png\" width=\"28px\"> Productos</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <div class=\"dropdown\">\n");
      out.write("                        <a class=\"btn btn-info\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                          <i class=\"fas fa-bars\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"dropdownMenuLink\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/solicituscompra.png\" width=\"22px\"> Compra solicitud</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/abastecimiento.png\" width=\"22px\"> Compra abastecimiento</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/ingresoproducto.png\" width=\"22px\"> Ingresar productos</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/kardex.png\" width=\"22px\"> Kardex</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/cronograma.png\" width=\"22px\"> Cronograma</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/inventario.png\" width=\"22px\"> Inventario</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"\"><img src=\"icons/memorandum.png\" width=\"22px\"> Memorandum</a><div class=\"dropdown-divider\"></div>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"index.jsp\"><img src=\"icons/salir.png\" width=\"22px\"> Salir</a>\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write(" \n");
      out.write("\n");

    SolicitudProDAO s = (SolicitudProDAO) session.getAttribute("bandeja");
    

      out.write("\n");
      out.write("\n");
      out.write("<div id=\"principal\">\n");
      out.write("    \n");
      out.write("    <table>\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>Producto</th>\n");
      out.write("                <th>Cantidad</th>\n");
      out.write("                <th>Precio</th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("        ");
 if(s==null){ 
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <th colspan=\"4\">Sin productos seleccionados</th>\n");
      out.write("            </tr>\n");
      out.write("        ");
 }else{ 
            List<Producto> lista = s.getLista();
            int total= s.getTotal();
            for(Producto e:lista){
        
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(e.getNombre());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(e.getStock());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(e.getPrecio());
      out.write("</td>\n");
      out.write("                <input type=\"button\" value=\"Retirar\" onclick=\"Retirar(");
      out.print(e.getId());
      out.write(")\">\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("        ");
 } }
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("\n");
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
      out.write("\n");
      out.write("    \n");
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
