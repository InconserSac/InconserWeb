package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;
import org.mindrot.jbcrypt.BCrypt;
import util.DatabaseConnection;

public class UsuarioDAO {
    // Otros métodos existentes...

    public Usuario obtenerUsuarioPorUsernameYPassword(String username, String password) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "SELECT * FROM usuarios WHERE username = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
            String storedHash = resultSet.getString("password");
            if (BCrypt.checkpw(password, storedHash)) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setUsername(resultSet.getString("username"));
                usuario.setPassword(storedHash);
                usuario.setEmail(resultSet.getString("email"));
                usuario.setResetToken(resultSet.getString("reset_token"));
                usuario.setRol(resultSet.getString("rol"));
                return usuario;
            }
        }
        return null;
    }

    public void insertarUsuario(Usuario usuario) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "INSERT INTO usuarios (username, password, email, rol, nombre_completo) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, usuario.getUsername());
        statement.setString(2, usuario.getPassword());
        statement.setString(3, usuario.getEmail());
        statement.setString(4, usuario.getRol());
        statement.setString(5, usuario.getNombreCompleto()); // Añadir nombre completo
        statement.executeUpdate();
    }

    public List<Usuario> obtenerTodosLosUsuarios() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        Connection connection = DatabaseConnection.getConnection();
        String sql = "SELECT * FROM usuarios";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            Usuario usuario = new Usuario();
            usuario.setId(resultSet.getInt("id"));
            usuario.setUsername(resultSet.getString("username"));
            usuario.setPassword(resultSet.getString("password"));
            usuario.setEmail(resultSet.getString("email"));
            usuario.setResetToken(resultSet.getString("reset_token"));
            usuario.setRol(resultSet.getString("rol"));
            usuarios.add(usuario);
        }
        return usuarios;
    }

    public Usuario obtenerUsuarioPorId(int id) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "SELECT * FROM usuarios WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            Usuario usuario = new Usuario();
            usuario.setId(resultSet.getInt("id"));
            usuario.setUsername(resultSet.getString("username"));
            usuario.setPassword(resultSet.getString("password"));
            usuario.setEmail(resultSet.getString("email"));
            usuario.setResetToken(resultSet.getString("reset_token"));
            usuario.setRol(resultSet.getString("rol"));
            return usuario;
        }
        return null;
    }

    public void actualizarUsuario(Usuario usuario) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "UPDATE usuarios SET username = ?, password = ?, email = ?, rol = ? WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, usuario.getUsername());
        statement.setString(2, usuario.getPassword());
        statement.setString(3, usuario.getEmail());
        statement.setString(4, usuario.getRol());
        statement.setInt(5, usuario.getId());
        statement.executeUpdate();
    }

    public void eliminarUsuario(int id) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "DELETE FROM usuarios WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        statement.executeUpdate();
    }

    public void actualizarFotoPerfil(int id, String foto) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "UPDATE usuarios SET foto = ? WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, foto);
        statement.setInt(2, id);
        statement.executeUpdate();
    }

    public boolean existeUsuario(String username) throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        String sql = "SELECT COUNT(*) FROM usuarios WHERE username = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            return resultSet.getInt(1) > 0;
        }
        return false;
    }

}
