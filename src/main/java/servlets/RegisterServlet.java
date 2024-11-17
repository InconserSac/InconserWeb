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
import java.io.PrintWriter;
import model.Usuario;
import model.Rol;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreCompleto = request.getParameter("nombre_completo");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String nombreRol = request.getParameter("rol");

        // Encriptar la contraseña
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

        // Obtener el rol correspondiente
        RolDAO rolDAO = new RolDAO();
        Rol rol = null;
        
        try {
            rol = rolDAO.obtenerRolPorNombre(nombreRol);
            if (rol == null) {
                throw new SQLException("El rol no existe en la base de datos.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error al obtener el rol: " + e.getMessage());
            return;
        }

        Usuario usuario = new Usuario(username, hashedPassword, email);
        usuario.setNombreCompleto(nombreCompleto); // Añadir nombre completo
        usuario.setRol(rol); // Asignar el objeto Rol

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        
        try {
            usuarioDAO.insertarUsuario(usuario);
            // Redirigir a la página de login después del registro exitoso
            response.sendRedirect("view/login.jsp");
        } catch (SQLException e) {
            if (e.getErrorCode() == 1062) { // Código de error de MySQL para duplicado de entrada
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('El nombre de usuario ya existe, por favor elige otro.');");
                    out.println("location='view/registro.jsp';"); // Ajuste la redirección a la página de registro
                    out.println("</script>");
                }
            } else {
                e.printStackTrace();
                response.getWriter().println("Error en la base de datos: " + e.getMessage());
            }
        }
    }
}
