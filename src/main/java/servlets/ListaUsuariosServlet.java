package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import dao.UsuarioDAO;
import model.Usuario;

@WebServlet(name = "ListaUsuariosServlet", urlPatterns = {"/ListaUsuariosServlet"})
public class ListaUsuariosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        try {
            // Obtener lista de usuarios desde la base de datos
            List<Usuario> usuarios = usuarioDAO.obtenerTodosLosUsuarios();

            // Enviar lista de usuarios al JSP
            request.setAttribute("usuarios", usuarios);
            request.getRequestDispatcher("/viewAdminDashboard/index.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
