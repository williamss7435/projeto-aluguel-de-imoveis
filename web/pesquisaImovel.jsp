<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%@include file="conecta.jsp" %>
<%    
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
                out.println("<cep>" + rs.getString("cep") + "</cep>");
                out.println("<proprietario>" + rs.getString("proprietario") + "</proprietario>");
                out.println("<locatario>" + rs.getString("locatario") + "</locatario>");
                out.println("<aluguel>" + rs.getDouble("valor_aluguel") + "</aluguel>");
                out.println("<endereco>" + rs.getString("endereco") + "</endereco>");
                out.println("<datainicio>" + rs.getString("data_inicio") + "</datainicio>");
                out.println("<datafim>" + rs.getString("data_fim") + "</datafim>");
                out.println("<comissao>" + rs.getString("comissao") + "</comissao>");
                out.println("<descricao>" + rs.getString("descricao") + "</descricao>");
            out.println("</imovel>");
        }
        
        pstm.close();
        rs.close();
        con.close();
    } catch (Exception e) {
    }
    out.println("</locacao>");
%>