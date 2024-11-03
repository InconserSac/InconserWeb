package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import dao.UsuarioDAO;

@WebServlet(name = "EliminarUsuarioServlet", urlPatterns = {"/EliminarUsuarioServlet"})
public class EliminarUsuarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        try {
            usuarioDAO.eliminarUsuario(id);
            response.sendRedirect("ListaUsuariosServlet");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
    }
