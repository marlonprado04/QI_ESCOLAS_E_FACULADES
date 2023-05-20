/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeloDAO;

import com.mysql.cj.jdbc.PreparedStatementWrapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modeloDTO.AlunoDTO;

public class AlunoDAO {

    // Criando a variável do tipo connection para poder conectar com o banco de dados
    // Criada globalmente para não precisar criar em cada uma das funções
    Connection con;

    // Criando variável que prepara o código sql para acessar o banco de dados
    // Criada globalmente para não precisar criar em cada uma das funções abaixo
    PreparedStatement pstm;

    public void CadastrarAluno(AlunoDTO objAlunoDTO) throws ClassNotFoundException {

        // Criando variável com comando SQL necessário para
        // incluir um novo aluno na tabela
        // ATENÇÃO: necessário colocar todos os campos que
        // não possuem auto_increment, para pegar do input do usuário através da página JSP
        // e passar para as variáveis ainda não declaradas.
        String sql = "INSERT INTO aluno (nome, sobrenome, telefone, email, curso, cpf) values (?, ?, ?, ?, ?, ?)";

        // Passando a função de conexão com o banco de dados criada na classe ConexaoDAO para
        // a variável con criada acima, para que a função CadastrarCliente funcione direito
        con = new ConexaoDAO().conexaoBD();

        try {

            // Atribuindo à variável pstm a conexão com sql (a partir da variável con)
            // e passando em seguida o comando sql criado acima
            pstm = con.prepareStatement(sql);
            
            // Passando os campos que serão inseridos no banco de dados, de acordo com o tipo
            // e sequência informada acima    
            pstm.setString(1, objAlunoDTO.getNome());
            pstm.setString(2, objAlunoDTO.getSobrenome());
            pstm.setString(3, objAlunoDTO.getTelefone());
            pstm.setString(4, objAlunoDTO.getEmail());
            pstm.setString(5, objAlunoDTO.getCurso());
            pstm.setString(6, objAlunoDTO.getCpf());
            
            // Executando o código preparado acima
            pstm.execute();
            
            // Fechando a conexão e codificação
            pstm.close();
            
            
            
            
           
            
          

        } catch (SQLException e) {

        }

    }

}
