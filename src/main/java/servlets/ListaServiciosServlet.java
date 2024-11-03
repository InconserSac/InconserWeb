package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import dao.ServicioDAO;
import model.Servicio;

@WebServlet(name = "ListaServiciosServlet", urlPatterns = {"/ListaServiciosServlet"})
public class ListaServiciosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServicioDAO servicioDAO = new ServicioDAO();
        try {
            List<Servicio> servicios = servicioDAO.obtenerTodosLosServicios();
            request.setAttribute("servicios", servicios);
            request.getRequestDispatcher("view/lista_servicios.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
