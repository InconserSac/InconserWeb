package model;

import java.util.List;

public class Rol {
    private int id;
    private String nombre;
    private List<Permiso> permisos;

    // Constructor sin parámetros
    public Rol() {
    }

    // Constructor con parámetros
    public Rol(int id, String nombre, List<Permiso> permisos) {
        this.id = id;
        this.nombre = nombre;
        this.permisos = permisos;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Permiso> getPermisos() {
        return permisos;
    }

    public void setPermisos(List<Permiso> permisos) {
        this.permisos = permisos;
    }

    // Método para agregar un permiso
    public void agregarPermiso(Permiso permiso) {
        this.permisos.add(permiso);
    }

    // Método para eliminar un permiso
    public void eliminarPermiso(Permiso permiso) {
        this.permisos.remove(permiso);
    }
}
