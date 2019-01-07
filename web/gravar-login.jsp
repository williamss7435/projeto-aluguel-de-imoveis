<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conecta.jsp" %>
<%    
    String sql = "";
    ResultSet rs = null;
    try {
        sql = "SELECT nome, cpf, email, creci FROM usuario WHERE usuario = ? and senha = ?";
        pstm = con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("login"));
        pstm.setString(2, request.getParameter("senha"));
        rs = pstm.executeQuery();
        if(rs.next()){
            session.setAttribute("nome", rs.getString("nome"));
            session.setAttribute("cpf", rs.getString("cpf"));
            session.setAttribute("email", rs.getString("email"));
            session.setAttribute("creci", rs.getString("creci"));
            response.sendRedirect("consultar.jsp");
        }else{
            response.sendRedirect("erro-login.jsp");
        }
            
    } catch (Exception ex) {
        response.sendRedirect("erro-bd.jsp?erro="+ex.getMessage());
    }
    
      rs.close();
      pstm.close();
      con.close();
%>