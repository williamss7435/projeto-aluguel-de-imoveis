<%@include  file="conecta.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String sql = "";
    
    try{
        sql = "INSERT INTO imovel"
                + "(codigo, cep, valor_aluguel, comissao, proprietario, locatario, endereco, data_inicio, data_fim, descricao) VALUES"
                + "(?,?,?,?,?,?,?,?,?,?)";
        
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("codigo"));
        pstm.setInt(2, Integer.parseInt(request.getParameter("cep")));
        pstm.setFloat(3, Float.parseFloat(request.getParameter("valorAluguel")));
        pstm.setInt(4, Integer.parseInt(request.getParameter("comissao")));
        pstm.setString(5, request.getParameter("proprietario"));
        pstm.setString(6, request.getParameter("locatario"));
        pstm.setString(7, request.getParameter("endereco"));
        pstm.setString(8, request.getParameter("data-inicio"));
        pstm.setString(9, request.getParameter("data-fim"));
        pstm.setString(10, request.getParameter("descricao"));
        
        pstm.executeUpdate();
        
        pstm.close();
        con.close();
        response.sendRedirect("consultar.jsp");
    }catch(Exception ex){
         response.sendRedirect("erro-bd.jsp?erro="+ex.getMessage());
    }
    
%>