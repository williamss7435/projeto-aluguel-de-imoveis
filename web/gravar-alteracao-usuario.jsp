<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conecta.jsp" %>

<%    
    String sql = "";

    try {
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");

        sql = "UPDATE usuario SET "
                + "nome = ?,usuario = ?,senha = ?,email = ?,creci = ?"
                + " WHERE cpf = ?";

        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("nome"));
        pstm.setString(2, request.getParameter("usuario"));
        pstm.setString(3, request.getParameter("senha"));
        pstm.setString(4, request.getParameter("email"));
        pstm.setInt(5, Integer.parseInt(request.getParameter("creci")));
        pstm.setInt(6, Integer.parseInt(session.getAttribute("cpf").toString()));

        pstm.executeUpdate();

        session.setAttribute("nome", request.getParameter("nome"));
        session.setAttribute("cpf", request.getParameter("cpf"));

        pstm.close();
        con.close();
        response.sendRedirect("consultar.jsp");
        
    } catch (Exception ex) {
        response.sendRedirect("erro-bd.jsp?erro=" + ex.getMessage());
    }
%>
