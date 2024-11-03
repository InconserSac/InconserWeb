package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Servicio;
import util.DatabaseConnection;

public class ServicioDAO {

    public List<Servicio> obtenerTodosLosServicios() throws SQLException {
        List<Servicio> servicios = new ArrayList<>();
        Connection connection = DatabaseConnection.getConnection();
        String sql = "SELECT * FROM servicios";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            Servicio servicio = new Servicio();
            servicio.setId(resultSet.getInt("id"));
            servicio.setNombre(resultSet.getString("nombre"));
            servicio.setDescripcion(resultSet.getString("descripcion"));
            servicio.setPrecio(resultSet.getDouble("precio"));
            servicio.setDuracion(resultSet.getInt("duracion"));
            servicio.setImagen(resultSet.getString("imagen"));
            servicios.add(servicio);
        }
        return servicios;
    }

    public void insertarServicio(Servicio servicio) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "INSERT INTO servicios (nombre, descripcion, precio, duracion, imagen) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, servicio.getNombre());
        statement.setString(2, servicio.getDescripcion());
        statement.setDouble(3, servicio.getPrecio());
        statement.setInt(4, servicio.getDuracion());
        statement.setString(5, servicio.getImagen());
        statement.executeUpdate();
    }
}
