package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class alterar_002dcadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"pt-br\">\n");
      out.write("<title>Alterar Cadastro</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"lib/bootstrap/css/bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/estilo.css\">\n");
      out.write("</head>\n");
      out.write("<body class=\"bg-red\">\n");
      out.write("\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-light bg-light barra-navegacao\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.jsp\"><img  class=\"align-top\"src=\"img/logo.png\"></a>\n");
      out.write("    <h2>Alterar Dados do Usuario(a) ");
      out.print( session.getAttribute("nome") );
      out.write("</h2> \n");
      out.write("    <a class=\"nav-link btn btn-danger text-white ml-5\" href=\"logoff.jsp\">Sair Do Sistema</a>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <div class=\"container mt-3\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col\">\n");
      out.write("\n");
      out.write("          <form action=\"gravar-alteracao-usuario.jsp\" method=\"post\">\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <label class=\"form-control-label\" for=\"nome\">Nome</label>\n");
      out.write("              <input type=\"text\" name=\"nome\" id=\"nome\" class=\"form-control\" placeholder=\"Digite o Seu Nome Completo\" value=\"");
      out.print( session.getAttribute("nome") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <label class=\"form-control-label\" for=\"cpf\">CPF (Não é Possivel Alterar Esse Campo)</label>\n");
      out.write("              <input type=\"text\" name=\"cpf\" id=\"cpf\" class=\"form-control\" readonly placeholder=\"Digite o Seu CPF\" value=\"");
      out.print( session.getAttribute("cpf") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"usuario\">Usuário</label>\n");
      out.write("              <input type=\"text\" name=\"usuario\" id=\"usuario\" class=\"form-control\" placeholder=\"Digite o Seu Login\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"senha\">Senha</label>\n");
      out.write("              <input type=\"password\" name=\"senha\" id=\"senha\" class=\"form-control\" placeholder=\"Digite a Sua Senha\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <div class=\"form-row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"email\">E-mail</label>\n");
      out.write("              <input type=\"email\" name=\"email\" id=\"email\" class=\"form-control\" placeholder=\"exemplo@exemplo.com\" value=\"");
      out.print( session.getAttribute("email") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("              <label class=\"form-control-label\" for=\"creci\">CRECI</label>\n");
      out.write("              <input type=\"text\" name=\"creci\" id=\"creci\" class=\"form-control\" placeholder=\"Digite o Seu CRECI\" value=\"");
      out.print( session.getAttribute("creci") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("          </div><br>\n");
      out.write("\n");
      out.write("          <button type=\"submit\" class=\"btn btn-danger\">Alterar</button>\n");
      out.write("          <a href=\"consultar.jsp\" class=\"btn btn-info\">Cancelar</a>\n");
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
