package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link href=\"estilos/indexx.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Courgette&display=swap\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <link rel=\"icon\" type=\"\" href=\"icons/logooretrans.png\">\n");
      out.write("    \n");
      out.write("    <title>Home</title>\n");
      out.write("  </head>\n");
      out.write("  <body class=\"body\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"cabecera\">\n");
      out.write("        <img src=\"icons/logooretrans2.png\" alt=\"\"/>\n");
      out.write("        <input type=\"button\" class=\"btn btn-danger\" onclick=\"location.href='login.jsp'\" value=\"Sesion Admi\"/>\n");
      out.write("        <input type=\"button\" class=\"btn btn-info\" onclick=\"location.href='loginUser.jsp'\" value=\"Sesion User\"/>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div id=\"general\">\n");
      out.write("        <h1>Somos OreTrans</h1>\n");
      out.write("        <h2>Empresa dedicada al transporte terrestre de carga excepcional y maquinaria pesada a nivel nacional e internacional.</h2>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <div class=\"contenedor\">\n");
      out.write("                    <div class=\"atras botones\"> &#60 </div>\n");
      out.write("                    <div class=\"adelante botones\"> &#62 </div>\n");
      out.write("                    <img src=\"imagenes/nuevo1.jpg\" alt=\"\" id=\"imagen\" />\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"fot col-md-4\">\n");
      out.write("                        <img src=\"imagenes/foto6.jpg\" alt=\"\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"fot col-md-4\">\n");
      out.write("                        <img src=\"imagenes/foto3.jpg\" alt=\"\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"fot col-md-4\">\n");
      out.write("                        <img src=\"imagenes/foto7.jpg\" alt=\"\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"fot col-md-6\">\n");
      out.write("                        <img src=\"imagenes/foto4.jpg\" alt=\"\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"fot col-md-6\">\n");
      out.write("                        <img src=\"imagenes/foto8.jpg\" alt=\"\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dia col-md-4\">\n");
      out.write("                        <h4><i class=\"fas fa-location-arrow\"></i> Ubicanos</h4>\n");
      out.write("                        <p>Av. Nestor Gambetta 480 Callao</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dia col-md-4\" style=\"background: #CECECE;\">\n");
      out.write("                        <h4><i class=\"fas fa-phone\"></i> Telefono</h4>\n");
      out.write("                        <p>429 9369</p>\n");
      out.write("                        <p>453 1111</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dia col-md-4\">\n");
      out.write("                        <h4><i class=\"fas fa-envelope-open-text\"></i> Correo</h4>\n");
      out.write("                        <p>comercial@oretrans.com.pe</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <script src=\"js/main.js\" type=\"text/javascript\"></script>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    <script src=\"https://kit.fontawesome.com/437756fd95.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
