package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class imovel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <title>Cadastro De Imóveis</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"lib/bootstrap/css/bootstrap.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/estilo.css\">\n");
      out.write("</head>\n");
      out.write("<body class=\"bg-imovel\">\n");
      out.write("\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-light bg-light barra-navegacao\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.html\"><img  class=\"align-top\" src=\"img/logo.png\"></a>\n");
      out.write("    <h2>Cadastrar Imóvel</h2>\n");
      out.write("\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link btn btn-danger text-white ml-5\" href=\"#\">Sair Do Sistema</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <div class=\"container mt-3\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col\">\n");
      out.write("\n");
      out.write("          <form action=\"gravar-imovel.jsp\" method=\"post\">\n");
      out.write("          <div class=\"form-row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"codigo\">Código</label>\n");
      out.write("              <input type=\"number\" name=\"codigo\" id=\"codigo\" class=\"form-control\" placeholder=\"Digite o Código Do Imóvel\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"cep\">CEP</label>\n");
      out.write("              <input type=\"text\" name=\"cep\" id=\"cep\" class=\"form-control\" placeholder=\"Digite O CEP Do Imóvel\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"valorAluguel\">Valor Do Aluguel</label>\n");
      out.write("              <input type=\"number\" min=\"0.00\" max=\"1000000.00\" name=\"valorAluguel\" id=\"valorAluguel\" class=\"form-control\" placeholder=\"Digite O Valor Do Aluguel\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"comissao\">% Da Comissão</label>\n");
      out.write("              <input type=\"range\" min=\"1\" max=\"100\" name=\"comissao\" id=\"comissao\" class=\"form-control\" placeholder=\"Porcertagem Da Comissão\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"proprietario\">Proprietário</label>\n");
      out.write("              <input type=\"text\" name=\"proprietario\" id=\"proprietario\" class=\"form-control\" placeholder=\"Nome Do Proprietário\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"locatario\">Locatário</label>\n");
      out.write("              <input type=\"text\" name=\"locatario\" id=\"locatario\" class=\"form-control\" placeholder=\"Nome Do Locatário\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"endereco\">Endereço</label>\n");
      out.write("              <input type=\"text\" name=\"endereco\" id=\"endereco\" class=\"form-control\" placeholder=\"Digite o Endereço Do Imóvel\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"data-inicio\">Data De Inicio Do Contrato</label>\n");
      out.write("              <input type=\"date\" name=\"data-inicio\" id=\"data-inicio\" class=\"form-control\" placeholder=\"Nome Do Proprietário\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"data-fim\">Data De Término Do Contrato</label>\n");
      out.write("              <input type=\"date\" name=\"data-fim\" id=\"data-fim\" class=\"form-control\" placeholder=\"Nome Do Locatário\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-control\">\n");
      out.write("            <label class=\"form-control-label\" for=\"descricao\">Descrição</label>\n");
      out.write("            <textarea class=\"form-control\" id=\"descricao\" name=\"descricao\" rows=\"2\"></textarea><br>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <button type=\"submit\" class=\"btn btn-warning\">Cadastrar</button>\n");
      out.write("          <a href=\"consultar.html\" class=\"btn btn-info\">Cancelar</a>\n");
      out.write("        </form>\n");
      out.write("\n");
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
