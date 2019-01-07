<%@ page import="java.sql.*"%>
<%
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
%>
