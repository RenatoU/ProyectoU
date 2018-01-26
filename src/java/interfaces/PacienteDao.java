
package interfaces;

import beans.Paciente;

public interface PacienteDao {
    
    boolean registrarPaciente(Paciente pacientes) throws Exception;
    boolean loginPaciente(String usuario, String clave) throws Exception;
//    boolean registrarUsuario(String usu, String clv) throws Exception;
    
}
