<% 
    if(session.getAttribute("nome")==null)
        response.sendRedirect("erro-login.jsp");
%>