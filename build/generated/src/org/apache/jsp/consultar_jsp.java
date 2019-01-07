package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class consultar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/conecta.jsp");
    _jspx_dependants.add("/verificar-login.jsp");
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

      out.write('\n');
      out.write('\n');

Connection con=null;  
PreparedStatement pstm =null;
try
{
    //Banco de Dados
    String serverName = "localhost:3306"; // ou "localhost:3307", por exemplo, se não for a porta padrão
    String mydatabase = "dados";
    //Login e senha do banco
    String username = "willi";
    String password = "will";
    // Carregando o JDBC Driver
    String driverName = "com.mysql.jdbc.Driver";
    
    Class.forName(driverName);
    // Criando a conexão com o Banco de Dados
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; // a url JDBC 
    con = DriverManager.getConnection(url, username, password);    
}
catch(SQLException ex)
{
	out.print(ex.getMessage());
}

      out.write('\n');
      out.write('\n');
 
    if(session.getAttribute("nome")==null)
        response.sendRedirect("erro-login.jsp");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <title>Consulta</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"lib/bootstrap/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/estilo.css\">\n");
      out.write("        <script src=\"lib/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/script01.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-imovel\">\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light barra-navegacao\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"index.html\"><img  class=\"align-top\"src=\"img/logo.png\"></a>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link btn btn-primary mr-2 text-white\" href=\"imovel.jsp\">Cadastrar Imóvel</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link btn btn-primary mr-5 text-white\" href=\"alterar-cadastro.jsp\">Alterar Dados</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link btn btn-danger text-white ml-5\" href=\"#\">Sair Do Sistema</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div class=\"w-100\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row mt-5\">\n");
      out.write("                <div class=\"col-4\">\n");
      out.write("                    <button class=\"mr-2 btn btn-info mr-5\" id=\"mostrar-todos\" name=\"mostrar-todos\">Mostrar Todos</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-7\">\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <input  id=\"text-pesquisa\" class=\"form-control\" type=\"text\" placeholder=\"Digite o Item a Pesquisar\">\n");
      out.write("                        <select id=\"opcao-pesquisa\" name=\"opcao-pesquisa\" class=\"form-control\">\n");
      out.write("                            <option value=\"codigo\">Código</option>\n");
      out.write("                            <option value=\"cep\">CEP</option>\n");
      out.write("                            <option value=\"proprietario\">Proprietário</option>\n");
      out.write("                            <option value=\"locatario\">Locatário</option>\n");
      out.write("                        </select>\n");
      out.write("                        <div class=\"input-group-btn\">\n");
      out.write("                            <button class=\"mr-2 btn btn-info mr-5\" id=\"btn-pesquisa\" name=\"btn-pesquisa\">Pesquisar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid mt-3\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                    <div id=\"tabela\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer class=\"fixed-bottom\">\n");
      out.write("            Nome: William Dos Santos Sousa - RGM: 16438639 - Tema: Cadastro De Aluguel De Imóveis\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
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
