
package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
    
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/cita_medica";
    private static final String user = "root";
    private static final String pass = "";
    private static Connection con = null;

    public Connection getConnection() throws Exception {
        if (con == null) {
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(url, user, pass);
            } catch (SQLException e) {
                throw new SQLException(e);
            }
        }
        return con;
    }
    
    public static void cerrar(ResultSet rs){
        try {
            if(rs != null){
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static void cerrar(PreparedStatement stm){
        try {
            if(stm != null){
                stm.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static void cerrar() throws SQLException{
        con.close();
//        try {
//            if(conn != null){
//                conn.close();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }
//    
//     public static void main(String[] args) throws Exception {
//        Conexion cn = new Conexion();
//        if(cn.getConnection() != null){
//            System.out.println("Conexion correcta");
//        }else{
//            System.out.println("Conexion incorrecta");
//        }
//    }
    
}
