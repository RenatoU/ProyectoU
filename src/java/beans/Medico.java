
package beans;

public class Medico {
    
    private int id_medico;
    private String nombre;
    private String apellido;
    private int dni;
    private int telefono;
    private String email;
    private String id_especilidad;

    public Medico() {
    }

    public Medico(String nombre, String apellido, int dni, int telefono, String email, String id_especilidad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.telefono = telefono;
        this.email = email;
        this.id_especilidad = id_especilidad;
    }

    public String getId_especilidad() {
        return id_especilidad;
    }

    public void setId_especilidad(String id_especilidad) {
        this.id_especilidad = id_especilidad;
    }



    public int getId_medico() {
        return id_medico;
    }

    public void setId_medico(int id_medico) {
        this.id_medico = id_medico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}
