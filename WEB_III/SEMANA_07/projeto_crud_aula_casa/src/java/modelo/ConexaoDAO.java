/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author QI
 */
public class ConexaoDAO {
    
    
    public Connection conexaoBD() throws ClassNotFoundException{
        
        Connection con = null;
        
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3307/clientes?user=root&password=";
            con = DriverManager.getConnection(url);
            
            
        } catch (SQLException e) {
            
            System.out.println(e);
        }
        
        return con;
    }
    
}
