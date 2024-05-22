package conexion;

import java.sql.Statement;
import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Conexion {

    Connection conn = null;
    String bd = "meditec1";
    String user = "root";
    String pass = "HabilidadesDirectivas123@";
    String ip = "localhost";
    String puerto = "3306";
    String driver = "com.mysql.cj.jdbc.Driver";
    Statement st = null;
    ResultSet rs = null;

    String cadena = "jdbc:mysql://" + ip + ":" + puerto + "/" + bd;
       
    public Connection miConexion() {
        try {
            Class.forName(driver);

            conn = DriverManager.getConnection(cadena, user, pass);
            if (conn != null) {
                System.out.println("Conexión realizada con éxito");
            }

            st = conn.createStatement();
            rs = st.executeQuery("Select * from medico");
            while (rs.next()) {
                int id = rs.getInt(1);
                String nombre = rs.getString(2);
                System.out.println("Id: " + id);
                System.out.println("Nombre del paciente: " + nombre);}

           
            JOptionPane.showMessageDialog(null, "Conexión realizada con éxito");
        } catch (Exception  e) {

            JOptionPane.showMessageDialog(null, "Ocurrió un error"
                    + "al conectarse a la base de datos. " + e.toString());
        }
        return conn;
    }

    public static void main(String[] args) {        
        Conexion con=new Conexion();
        con.miConexion();        
    }
}
