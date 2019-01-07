<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%@include file="conecta.jsp" %>
<%    
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    out.println("<locacao>");
    try {

        String sql = "DELETE FROM imovel WHERE codigo= ?";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("codigo"));
        pstm.executeUpdate();
        
        
        ResultSet rs = null;
        String sql2 = "SELECT * FROM imovel";
        pstm = con.prepareStatement(sql2);
        rs = pstm.executeQuery();
        
        while (rs.next()) {
            out.println("<imovel>");
                out.println("<codigo>" + rs.getString("codigo") + "</codigo>");
                out.println("<cep>" + rs.getString("cep") + "</cep>");
                out.println("<proprietario>" + rs.getString("proprietario") + "</proprietario>");
                out.println("<locatario>" + rs.getString("cep") + "</locatario>");
                out.println("<aluguel>" + rs.getDouble("valor_aluguel") + "</aluguel>");
                out.println("<endereco>" + rs.getString("endereco") + "</endereco>");
                out.println("<datainicio>" + rs.getString("data_inicio") + "</datainicio>");
                out.println("<datafim>" + rs.getString("data_fim") + "</datafim>");
                out.println("<comissao>" + rs.getString("comissao") + "</comissao>");
            out.println("</imovel>");
        }
        
        pstm.close();
        rs.close();
        con.close();
    } catch (Exception ex) {
        response.sendRedirect("erro-bd.jsp?erro="+ex.getMessage());
    }
    out.println("</locacao>");
%>