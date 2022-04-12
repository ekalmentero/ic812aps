package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConexaoBD {
	
	private static String url = "jdbc:mysql://127.0.0.1:3306/ic812aps";
    private static String usuario = "root";
    private static String senha = "";
    private static String driver = "com.mysql.cj.jdbc.Driver";   
    private static Connection con;


    public static Connection getConnection() {
        try {
            Class.forName(driver);
            
            try {
                con = DriverManager.getConnection(url, usuario, senha);
            } catch (SQLException ex) {
        
                System.out.println("Falha ao criar conexão com o banco de dados."); 
            }
        } catch (ClassNotFoundException ex) {
            
            System.out.println("Driver JDBC não encontrado."); 
        }
        return con;
    }


}
