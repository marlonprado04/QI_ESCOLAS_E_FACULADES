package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import modeloDTO.LivroDTO;
import java.sql.ResultSet;

public class LivroDAO {

    // Criando a variável do tipo connection para poder conectar com o banco de dados
    // Criada globalmente para não precisar criar em cada uma das funções
    Connection con;

    // Criando variável que prepara o código sql para acessar o banco de dados
    // Criada globalmente para não precisar criar em cada uma das funções abaixo
    PreparedStatement pstm;

    // Criando variável necessária para pegar e trabalhar 
    // com os dados do banco de dados 
    ResultSet rs;

    //Criando variável do tipo arraylist para colocar a lista de alunos
    // extraída do banco de dados a partir do resultset
    ArrayList<LivroDTO> lista = new ArrayList<>();

    // Criando método do tipo VOID (não retorna nada quando chamado)
    // para cadastrar LIVRO novo. Coloquei como parâmetro padrão do método um objeto
    // do tipo LIVRODTO que será a classe de onde as informações do LIVRO
    // serão puxadas.
    public void CadastrarLivro(LivroDTO objAlunoDTO) throws ClassNotFoundException {

        // Criando variável com comando SQL necessário para
        // incluir um novo LIVRO na tabela
        // ATENÇÃO: necessário colocar todos os campos que
        // não possuem auto_increment, para pegar do input do usuário através da página JSP
        // e passar para as variáveis ainda não declaradas.
        String sql = "INSERT INTO livro (titulo, editora, ano_publicacao, genero, isbn) VALUES (?, ?, ?, ?, ?)";

        // Passando a função de conexão com o banco de dados criada na classe ConexaoDAO para
        // a variável con criada acima, para que a função CADASTRARLIVRO funcione direito
        con = new ConexaoDAO().conexaoBD();

        try {

            // Atribuindo à variável pstm a conexão com sql (a partir da variável con)
            // e passando em seguida o comando sql criado acima
            pstm = con.prepareStatement(sql);

            // Passando os campos que serão inseridos no banco de dados, de acordo com o tipo
            // e sequência informada acima    
            pstm.setString(1, objAlunoDTO.getTitulo());
            pstm.setString(2, objAlunoDTO.getEditora());
            pstm.setString(3, objAlunoDTO.getAno_publicacao());
            pstm.setString(4, objAlunoDTO.getGenero());
            pstm.setString(5, objAlunoDTO.getIsbn());

            // Executando o código preparado acima
            pstm.execute();

            // Fechando a conexão e codificação
            pstm.close();

        } catch (SQLException e) {

            System.err.println(e);

        }

    }

    // Criando método do tipo arraylist que retorna um array quando chamado
    // para listar todos os LIVROS 
    public ArrayList<LivroDTO> ListarLivro() throws ClassNotFoundException {

        // Criando variável com comando SQL 
        String sql = "SELECT * FROM livro;";

        //Criando conexão com banco de dados
        con = new ConexaoDAO().conexaoBD();

        // Criando Try Catch
        try {

            // Preparando a conexão com SQL a partir do código SQL acima
            // e da variável CON que possui a conexão com o banco de dados
            pstm = con.prepareStatement(sql);

            // Como o comando em sql acima retorna uma seleção, é necessário
            // trabalhar com a variável do tipo ResultSet, que vai armazenar
            // os dados da seleção.
            // Abaixo estou passando o resultado do pstm para essa 
            // variável do tipo ResultSet
            rs = pstm.executeQuery(sql);

            // Criando laço de repetição para varrer o resultado
            // do select do banco de dados até pegar o último elemento            
            while (rs.next()) {

                // Criando objeto para acessar as informações do LIVRO
                LivroDTO objLivroDTO = new LivroDTO();

                // Passando as informações do LIVRO extraídas do banco de dados
                // para a classe LIVRODTO 
                objLivroDTO.setId(rs.getInt("id"));
                objLivroDTO.setTitulo(rs.getString("titulo"));
                objLivroDTO.setEditora(rs.getString("editora"));
                objLivroDTO.setAno_publicacao(rs.getString("ano_publicacao"));
                objLivroDTO.setGenero(rs.getString("genero"));
                objLivroDTO.setIsbn(rs.getString("isbn"));

                // Adicionando as informações do LIVRO para a variável
                // lista criada acima
                lista.add(objLivroDTO);

            }

            // Executando o código preparado acima
            pstm.execute();

            // Fechando a conexão e codificação
            pstm.close();
        } catch (SQLException e) {

            System.out.print(e);

        }

        return lista;

    }
}
