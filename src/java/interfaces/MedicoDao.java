
package interfaces;

import beans.Medico;
import java.sql.SQLException;
import java.util.List;

public interface MedicoDao {
    
    boolean registrarMedico(Medico medico) throws Exception;
    List<Medico> listarMedico() throws Exception;
    
}
