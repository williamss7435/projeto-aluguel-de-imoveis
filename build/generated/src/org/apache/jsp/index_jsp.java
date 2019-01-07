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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <title>Home</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"lib/bootstrap/css/bootstrap.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/estilo.css\">\n");
      out.write("</head>\n");
      out.write("<body class=\"bg-main\">\n");
      out.write("\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-light bg-light barra-navegacao\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"#\"><img  class=\"align-top\" src=\"img/logo.png\"></a>\n");
      out.write("\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav mr-auto\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" href=\"index.html\">Home</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"cadastro.html\">Cadastrar Novo Usuário</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("      <form class=\"form-inline\" action=\"\">\n");
      out.write("        <input type=\"text\" name=\"login\" id=\"login\" class=\"form-control mr-2\" placeholder=\"Login\">\n");
      out.write("        <input type=\"password\" name=\"senha\" id=\"senha\" class=\"form-control mr-4\" placeholder=\"Senha\">  \n");
      out.write("        <button type=\"submit\" class=\"btn btn-outline-danger btn-lg\">Login</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <div class=\"container box-principal\">\n");
      out.write("    <div class=\"row justify-content-center\">\n");
      out.write("      <div class=\"col-auto box-titulo mb-3\">\n");
      out.write("        Sistema De Aluguel De Imóveis\n");
      out.write("      </div>\n");
      out.write("      <div class=\"w-100\"></div>\n");
      out.write("      <div class=\"col-auto box-login\">\n");
      out.write("        <a href=\"\"> RGM: 1643863-9 - Tema: Cadastro De Aluguel De Imóveis</a>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <footer class=\"fixed-bottom\">\n");
      out.write("    Nome: William Dos Santos Sousa - RGM: 16438639 - Tema: Cadastro De Aluguel De Imóveis\n");
      out.write("  </footer>\n");
      out.write("  <script src=\"lib/jquery-3.2.1.min.js\"></script>\n");
      out.write("  <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
