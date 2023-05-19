/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeloDAO;

/**
 *
 * @author marlo
 */
public class AlunoDAO {
    
    public void CadastrarCliente(){
        
        
        // Criando variável com comando SQL necessário para
        // incluir um novo aluno na tabela
        
        // ATENÇÃO: necessário colocar todos os campos que
        // não possuem auto_increment, para pegar do input do usuário através da página JSP
        // e passar para as variáveis ainda não declaradas.
        
        String sql = "INSERT INTO aluno (nome, sobrenome, telefone, email, curso, cpf) values (?, )";
    }
    
    
    
}
