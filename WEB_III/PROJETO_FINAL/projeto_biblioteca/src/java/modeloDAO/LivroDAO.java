
package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import modeloDTO.AlunoDTO;
import java.sql.ResultSet;

public class LivroDAO {
    
    // Criando variável do tipo CONNECTION para poder conectar com o banco de dados
    Connection con;
    
    // Criando variável para preparar o código sql e acessar o banco de dados
    PreparedStatement pstm;
    
    // Criando variável necessária para trabalhar lista de dados do banco de dados
    ResultSet rs;
    
    // Criando variável do tipo Arraylist para colcar listas extraídas do banco de dados
    ArrayList<LivroDTO> lista = new LivroDTO<>();
    
}
