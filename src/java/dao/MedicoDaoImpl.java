
package dao;

import Datos.Conexion;
import beans.Medico;
import interfaces.MedicoDao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class MedicoDaoImpl extends Conexion implements MedicoDao{

    @Override
    public boolean registrarMedico(Medico medico) throws Exception {
        boolean status = false;
        PreparedStatement stm = null;
        String registrar = "INSERT INTO medicos(nombre, apellidos, dni, telefono, email, id_especialidad) "
                + "VALUES(?,?,?,?,?,(SELECT id_especialidad FROM especialidades WHERE especialidad=?));";
//        Connection cn = con.getConnection();
//        if (cn != null) {
            try {

                stm = getConnection().prepareStatement(registrar);

                stm.setString(1, medico.getNombre());
                stm.setString(2, medico.getApellido());
                stm.setInt(3, medico.getDni());
                stm.setInt(4, medico.getTelefono());
                stm.setString(5, medico.getEmail());
                stm.setString(6, medico.getId_especilidad());
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
//        }
        return status;
    }

    @Override
    public List<Medico> listarMedico() throws Exception {
        
        List<Medico> lista = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String listar = "SELECT m.id_medico, m.nombre, m.apellidos, m.dni, m.telefono, m.email,"
                + " e.especialidad "
                + "FROM medicos m INNER JOIN especialidades e "
                + "ON m.id_especilidad = e.id_especialidad ";
        
        try {
            stm = getConnection().prepareStatement(listar);
            
            rs = stm.executeQuery();
            lista = new LinkedList<Medico>();
            while(rs.next()){
                Medico medico = new Medico();
                medico.setId_medico(rs.getInt(1));
                medico.setNombre(rs.getString(2));
                medico.setApellido(rs.getString(3));
                medico.setDni(rs.getInt(4));
                medico.setTelefono(rs.getInt(5));
                medico.setEmail(rs.getString(6));
                medico.setId_especilidad(rs.getString(7));
                lista.add(medico);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return lista;
    }
    
}
