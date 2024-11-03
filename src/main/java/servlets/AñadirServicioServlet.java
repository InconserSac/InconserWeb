package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import dao.ServicioDAO;
import model.Servicio;

@WebServlet(name = "AñadirServicioServlet", urlPatterns = {"/AñadirServicioServlet"})
@MultipartConfig
public class AñadirServicioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int duracion = Integer.parseInt(request.getParameter("duracion"));
        Part filePart = request.getPart("imagen");
        String fileName = filePart != null ? filePart.getSubmittedFileName() : "";
        String uploadPath = getServletContext().getRealPath("") + "Img";

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        String filePath = uploadPath + File.separator + fileName;
        if (filePart != null && !fileName.isEmpty()) {
            try (InputStream fileContent = filePart.getInputStream();
                 FileOutputStream fos = new FileOutputStream(filePath)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            }
        }

        Servicio servicio = new Servicio();
        servicio.setNombre(nombre);
        servicio.setDescripcion(descripcion);
        servicio.setPrecio(precio);
        servicio.setDuracion(duracion);
        servicio.setImagen("Img/" + fileName);

        ServicioDAO servicioDAO = new ServicioDAO();
        try {
            servicioDAO.insertarServicio(servicio);
            response.sendRedirect("ListaServiciosServlet");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
