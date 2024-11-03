package servlets;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
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

@WebServlet(name = "ReporteUsuariosServlet", urlPatterns = {"/ReporteUsuariosServlet"})
public class ReporteUsuariosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        try {
            List<Usuario> usuarios = usuarioDAO.obtenerTodosLosUsuarios();

            // Configurar la respuesta HTTP para PDF
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=usuarios.pdf");

            // Crear documento PDF
            Document document = new Document();
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

            // Añadir contenido al documento PDF
            document.add(new com.itextpdf.text.Paragraph("Lista de Usuarios Registrados"));
            PdfPTable table = new PdfPTable(4);
            table.addCell("ID");
            table.addCell("Usuario");
            table.addCell("Email");
            table.addCell("Password");

            for (Usuario usuario : usuarios) {
                table.addCell(String.valueOf(usuario.getId()));
                table.addCell(usuario.getUsername());
                table.addCell(usuario.getEmail());
                table.addCell(usuario.getPassword());
            }

            document.add(table);
            document.close();
        } catch (SQLException | DocumentException e) {
            e.printStackTrace();
            response.getWriter().println("Error en la base de datos: " + e.getMessage());
        }
    }
}
