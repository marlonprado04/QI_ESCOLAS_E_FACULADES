package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modeloDTO.EmprestimoDTO;

public class EmprestimoDAO {

    Connection con; // Variável de conexão com o banco de dados
    PreparedStatement pstm; // Variável para preparar o código SQL
    ResultSet rs; // Variável para armazenar os resultados do banco de dados
    ArrayList<EmprestimoDTO> lista = new ArrayList<>(); // Lista de objetos EmprestimoDTO

    // Método para cadastrar um novo empréstimo
    public void CadastrarEmprestimo(EmprestimoDTO objEmprestimoDTO) throws ClassNotFoundException {

        String sql = "INSERT INTO emprestimo (id_aluno, id_exemplar, data_emprestimo, data_devolucao, status) VALUES (?, ?, ?, ?, ?)";

        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEmprestimoDTO.getIdAluno());
            pstm.setInt(2, objEmprestimoDTO.getIdExemplar());
            pstm.setString(3, objEmprestimoDTO.getDataEmprestimo());
            pstm.setString(4, objEmprestimoDTO.getDataDevolucao());
            pstm.setString(5, objEmprestimoDTO.getStatus());

            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.err.println(e);
        }

    }

    // Método para listar os empréstimos
    public ArrayList<EmprestimoDTO> ListarEmprestimo() throws ClassNotFoundException {

        String sql = "SELECT * FROM emprestimo";

        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();

            while (rs.next()) {
                EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();
                objEmprestimoDTO.setId(rs.getInt("id"));
                objEmprestimoDTO.setIdAluno(rs.getInt("id_aluno"));
                objEmprestimoDTO.setIdExemplar(rs.getInt("id_exemplar"));
                objEmprestimoDTO.setDataEmprestimo(rs.getString("data_emprestimo"));
                objEmprestimoDTO.setDataDevolucao(rs.getString("data_devolucao"));
                objEmprestimoDTO.setStatus(rs.getString("status"));

                lista.add(objEmprestimoDTO);
            }

            pstm.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return lista;
    }

    // Método para excluir um empréstimo
    public void ExcluirEmprestimo(EmprestimoDTO objEmprestimoDTO) throws ClassNotFoundException {

        String sql = "DELETE FROM emprestimo WHERE id = ?";

        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEmprestimoDTO.getId());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.err.println(e);
        }

    }

    // Método para alterar as informações de um empréstimo
    public void AlterarEmprestimo(EmprestimoDTO objEmprestimoDTO) throws ClassNotFoundException {

        String sql = "UPDATE emprestimo SET id_aluno = ?, id_exemplar = ?, data_emprestimo = ?, data_devolucao = ?, status = ? WHERE id = ?";

        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEmprestimoDTO.getIdAluno());
            pstm.setInt(2, objEmprestimoDTO.getIdExemplar());
            pstm.setString(3, objEmprestimoDTO.getDataEmprestimo());
            pstm.setString(4, objEmprestimoDTO.getDataDevolucao());
            pstm.setString(5, objEmprestimoDTO.getStatus());

            pstm.setInt(6, objEmprestimoDTO.getId());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.err.println(e);
        }

    }

    // Método para listar os empréstimos de um aluno específico
    public ArrayList<EmprestimoDTO> ListarEmprestimoDoAluno(int idAluno) throws ClassNotFoundException {

        String sql = "SELECT * FROM emprestimo WHERE id_aluno = ?";

        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, idAluno);
            rs = pstm.executeQuery();

            while (rs.next()) {
                EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();
                objEmprestimoDTO.setId(rs.getInt("id"));
                objEmprestimoDTO.setIdAluno(rs.getInt("id_aluno"));
                objEmprestimoDTO.setIdExemplar(rs.getInt("id_livro"));
                objEmprestimoDTO.setDataEmprestimo(rs.getString("data_emprestimo"));
                objEmprestimoDTO.setDataDevolucao(rs.getString("data_devolucao"));
                objEmprestimoDTO.setStatus(rs.getString("status"));

                lista.add(objEmprestimoDTO);
            }

            pstm.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

        return lista;
    }
    
   
}
