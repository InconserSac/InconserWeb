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
            List<Usuario> usuarios = usuarioDAO.obtenerTodosLosUsuarios();

            // Debug: Verificar la lista de usuarios
            if (usuarios == null || usuarios.isEmpty()) {
                System.out.println("La lista de usuarios está vacía o es nula.");
            } else {
                for (Usuario usuario : usuarios) {
                    System.out.println("ID: " + usuario.getId() + ", Usuario: " + usuario.getUsername() + ", Email: " + usuario.getEmail() + ", Rol: " +usuario.getRol());
                }
            }

            request.setAttribute("usuarios", usuarios);
            request.getRequestDispatcher("/view/lista_usuarios.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
