<%@ page session="true" %>
<%
    // Invalidar la sesi�n
    session.invalidate();
    // Redirigir a la p�gina de login
    response.sendRedirect("login.jsp");
%>
