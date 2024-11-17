package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Permiso;
import model.Rol;
import util.DatabaseConnection;

public class RolDAO {
    
    // Asegúrate de que este método está definido como público
    public List<Rol> obtenerTodosLosRoles() throws SQLException {
        List<Rol> roles = new ArrayList<>();
        String sql = "SELECT * FROM roles";
        
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            
            while (resultSet.next()) {
                Rol rol = new Rol();
                rol.setId(resultSet.getInt("id"));
                rol.setNombre(resultSet.getString("nombre"));
                rol.setPermisos(obtenerPermisosPorRol(rol.getId()));
                roles.add(rol);
            }
        }
        
        return roles;
    }

    public List<Permiso> obtenerPermisosPorRol(int rolId) throws SQLException {
        List<Permiso> permisos = new ArrayList<>();
        String sql = "SELECT p.id, p.nombre FROM permisos p INNER JOIN rol_permiso rp ON p.id = rp.permiso_id WHERE rp.rol_id = ?";
        
        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            
            statement.setInt(1, rolId);
            
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Permiso permiso = new Permiso();
                    permiso.setId(resultSet.getInt("id"));
                    permiso.setNombre(resultSet.getString("nombre"));
                    permisos.add(permiso);
                }
            }
        }
        
        return permisos;
    }

    public Rol obtenerRolPorNombre(String nombre) throws SQLException {
        String sql = "SELECT * FROM roles WHERE nombre = ?";
        Rol rol = null;

        try (Connection connection = DatabaseConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            
            statement.setString(1, nombre);
            
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    rol = new Rol();
                    rol.setId(resultSet.getInt("id"));
                    rol.setNombre(resultSet.getString("nombre"));
                    rol.setPermisos(obtenerPermisosPorRol(rol.getId()));
                }
            }
        }
        
        return rol;
    }
}
