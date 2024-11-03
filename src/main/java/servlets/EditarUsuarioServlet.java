package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import dao.UsuarioDAO;
import model.Usuario;

@WebServlet(name = "EditarUsuarioServlet", urlPatterns = {"/EditarUsuarioServlet"})
public class EditarUsuarioServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        try {
            Usuario usuario = usuarioDAO.obtenerUsuarioPorId(id);
            request.setAttribute("usuario", usuario);
            request.getRequestDispatcher("view/editar_usuario.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
