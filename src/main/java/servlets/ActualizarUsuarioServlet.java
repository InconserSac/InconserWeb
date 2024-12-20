package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import org.mindrot.jbcrypt.BCrypt;
import dao.UsuarioDAO;
import dao.RolDAO;
import model.Usuario;
import model.Rol;

@WebServlet(name = "ActualizarUsuarioServlet", urlPatterns = {"/ActualizarUsuarioServlet"})
public class ActualizarUsuarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String nombreRol = request.getParameter("rol"); // Obtener el nombre del rol
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        RolDAO rolDAO = new RolDAO();
        try {
            Usuario usuario = usuarioDAO.obtenerUsuarioPorId(id);
            usuario.setUsername(username);
            usuario.setEmail(email);

            if (password != null && !password.isEmpty()) {
                String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
                usuario.setPassword(hashedPassword);
            }

            // Obtener el objeto Rol correspondiente y asignarlo
            Rol rol = rolDAO.obtenerRolPorNombre(nombreRol);
            usuario.setRol(rol);

            usuarioDAO.actualizarUsuario(usuario);
            response.sendRedirect("ListaUsuariosServlet");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
