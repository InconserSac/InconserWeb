package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import dao.UsuarioDAO;

@WebServlet(name = "CheckUsernameServlet", urlPatterns = {"/CheckUsernameServlet"})
public class CheckUsernameServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        UsuarioDAO usuarioDAO = new UsuarioDAO();

        try (PrintWriter out = response.getWriter()) {
            boolean exists = usuarioDAO.existeUsuario(username);
            response.setContentType("application/json");
            out.print("{\"exists\":" + exists + "}");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
