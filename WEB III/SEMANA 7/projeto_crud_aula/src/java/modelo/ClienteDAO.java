/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.ClienteDTO;

/**
 *
 * @author QI
 */
public class ClienteDAO {
    
    // Criando variáveis globais
    
    Connection con; // variável para conexão de banco
    PreparedStatement pstm; // variável para preparar o código SQL e passar para o banco
    ResultSet rs; // Variável para manter o resultado extraído do banco
    ArrayList<ClienteDTO> lista = new ArrayList<>(); // Arraylist para listar extração do banco
    
    // Criando método para cadastrar clientes
    public void CadastrarCliente(ClienteDTO objClienteDTO) throws ClassNotFoundException{
        
        // Variável com comando que será passado ao SQL
        String sql = "insert into cliente (nome_cli, telefone_cli, email_cli, cpf_cli) values (?, ?, ?, ?)";
        
        // Atribuindo conexão java do método ConexaoDAO para variável CON (criada acima)
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
        } catch (Exception e) {
        }
        
        
                
                
    }
    
    public ArrayList<ClienteDTO> ListarCliente() throws ClassNotFoundException{
        
        // Criando variável para comando em SQL que lista todos os clientes
        String sql = "select *  from cliente";

        // Atribuindo conexão java do método ConexaoDAO para variável CON (criada acima, de forma global)
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            // Passando o código da consulta em SQL para a variável pstm que vai se comunicar com o banco de dados
            pstm = con.prepareStatement(sql);
            // Passando o valor da pstm para a variável rs
            rs = pstm.executeQuery(sql);
            
            while (rs.next()){
                
                
                ClienteDTO objClienteDTO = new ClienteDTO(); // Cria objeto para classe ClienteDTO
                objClienteDTO.setId_cli(rs.getString("id_cli")); //
                objClienteDTO.setNome_cli(rs.getString("nome_cli"));
                objClienteDTO.setTelefone_cli(rs.getString("telefone_cli"));
                objClienteDTO.setCpf_cli(rs.getString("cpf_cli"));

                lista.add(objClienteDTO);
                

            }
            
            
        } catch (SQLException e) {
            
            System.out.println(e);
        }
        
        return lista;
        
        }
    
}
