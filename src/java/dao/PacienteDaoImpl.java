package dao;

import Datos.Conexion;
import beans.Paciente;
import interfaces.PacienteDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class PacienteDaoImpl extends Conexion implements PacienteDao {



    @Override
    public boolean registrarPaciente(Paciente pacientes) throws Exception {
        boolean status = false;
        PreparedStatement stm = null;
        String registrar = "INSERT INTO pacientes(nombre, apellidos, dni, direccion,telefono, email,usuario, clave) "
                + "VALUES(?,?,?,?,?,?,?,?)";
        
            try {

                stm = getConnection().prepareStatement(registrar);

                stm.setString(1, pacientes.getNombre());
                stm.setString(2, pacientes.getApellidos());
                stm.setInt(3, pacientes.getDni());
                stm.setString(4, pacientes.getDireccion());
                stm.setInt(5, pacientes.getTelefono());
                stm.setString(6, pacientes.getEmail());
                stm.setString(7, pacientes.getUsuario());
                stm.setString(8, pacientes.getClave());
                stm.executeUpdate();

                status = true;
            } catch (Exception ex) {
                System.out.println("Error al registrar");
                ex.getMessage();
                status = false;
            } finally {
                Conexion.cerrar(stm);
                Conexion.cerrar();
            }
        return status;
    }



    @Override
    public boolean loginPaciente(String usuario, String clave) throws Exception {
        
        boolean status = false;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String verificar = "SELECT usuario, clave FROM pacientes WHERE usuario=? AND clave=?";
            try {

                stm = getConnection().prepareStatement(verificar);

                stm.setString(1, usuario);
                stm.setString(2, clave);
                rs = stm.executeQuery();
                
                if(rs.absolute(1)){
                status = true;
                }else{
                    status=false;
                }
            } catch (Exception ex) {
                System.out.println("Error al registrar");
                ex.getMessage();
                status = false;
            } finally {
                Conexion.cerrar(stm);
                Conexion.cerrar();
            }

        return status;
        
    }
}