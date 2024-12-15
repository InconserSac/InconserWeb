<%@ page session="true" %>
<%
    // Invalidar la sesión
    session.invalidate();
    // Redirigir a la página de login
    response.sendRedirect("login.jsp");
%>
