<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conecta.jsp" %>

<% 
    String sql = "";
    
    try{
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Pragma","no-cache"); 
        
        sql = "UPDATE imovel SET "
                + "cep = ?,valor_aluguel = ?,comissao = ?,proprietario = ?,locatario = ?,endereco = ?,data_inicio = ?,data_fim = ?,descricao = ?"
                + " WHERE codigo = ?";
           
        pstm = con.prepareStatement(sql);
        pstm.setInt(1, Integer.parseInt(request.getParameter("cep")));
        pstm.setFloat(2, Float.parseFloat(request.getParameter("valorAluguel")));
        pstm.setInt(3, Integer.parseInt(request.getParameter("comissao")));
        pstm.setString(4, request.getParameter("proprietario"));
        pstm.setString(5, request.getParameter("locatario"));
        pstm.setString(6, request.getParameter("endereco"));
        pstm.setString(7, request.getParameter("data-inicio"));
        pstm.setString(8, request.getParameter("data-fim"));
        pstm.setString(9, request.getParameter("descricao"));
        pstm.setString(10, request.getParameter("codigo"));
         
        pstm.executeUpdate();
        
        pstm.close();
        con.close();
        response.sendRedirect("consultar.jsp");
        
    }catch(Exception ex){
         response.sendRedirect("erro-bd.jsp?erro="+ex.getMessage());
    }
    
%>
