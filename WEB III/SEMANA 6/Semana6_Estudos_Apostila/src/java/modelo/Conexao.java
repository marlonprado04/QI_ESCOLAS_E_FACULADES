/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



/**
 *
 * @author marlo
 */
public class Conexao {
    
    private final String driver = "com.mysql.cs.jdbc.Driver";
    private final String servidor = "jdbc:mysql://localhost/dbaula";
    private final String usuario = "root";
    private final String senha = "";
    
    private Connection conectar(){
        
        try{
            
            Class.forName(driver);
            return DriverManager.getConnection(servidor, usuario, senha);
        }catch(ClassNotFoundException | SQLException ex){
            System.err.println(ex);
            return null;
        }
    }
    public ArrayList<Pessoa> pessoasbd(){
        
        ArrayList<Pessoa> arrayPessoa = new ArrayList<>();
        
        
        try{
            ResultSet listaPessoas = conectar().createStatement().executeQuery("SELECT * FROM tbpessoa");
            while(listaPessoas.next())
                arrayPessoa.add(new Pessoa(listaPessoas.getInt("id"),
                        listaPessoas.getString("nome"),
                        listaPessoas.getString("cpf")));
        }catch(Exception ex){
            
            System.out.println(ex);
        }
        return arrayPessoa;
    }
    
    
}
