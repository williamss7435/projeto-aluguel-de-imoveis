<%@include  file="conecta.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String sql = "";
    
    try{
        sql = "INSERT INTO usuario"
                + "(nome, cpf, usuario, senha, email, creci) VALUES"
                + "(?,?,?,?,?,?)";
        
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("nome"));
        pstm.setInt(2, Integer.parseInt(request.getParameter("cpf")));
        pstm.setString(3, request.getParameter("usuario"));
        pstm.setString(4, request.getParameter("senha"));
        pstm.setString(5, request.getParameter("email"));
        pstm.setInt(6, Integer.parseInt(request.getParameter("creci")));
        
        pstm.executeUpdate();
        
        pstm.close();
        con.close();
        response.sendRedirect("novo-cadastro.html");
    }catch(Exception ex){
        response.sendRedirect("erro-bd.jsp?erro="+ex.getMessage());
    }
    
%>