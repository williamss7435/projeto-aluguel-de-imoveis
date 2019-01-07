package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class pesquisaImovel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/conecta.jsp");
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
      response.setContentType("text/xml;charset=UTF-8");
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
    
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    out.println("<locacao>");
    try {
        ResultSet rs = null;
        String sql = "SELECT * FROM imovel";
        pstm = con.prepareStatement(sql);
        rs = pstm.executeQuery();
        while (rs.next()) {
            out.println("<imovel>");
                out.println("<codigo>" + rs.getString("codigo") + "</codigo>");
            out.println("</imovel>");
        }
        rs.close();
        con.close();
    } catch (Exception e) {
    }
    out.println("</locacao>");

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
