<%@ page import="modeloDTO.ExemplarDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modeloDAO.ExemplarDAO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Exemplares</title>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div class="menu">
                <a href="../aluno/codeListarAluno.jsp">Alunos</a>
                <a href="../livro/codeListarLivro.jsp">Livros</a>
                <a href="../autor/codeListarAutor.jsp">Autores</a>
                <a href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                <a href="../emprestimo/codeListarEmprestimo.jsp">Empréstimos</a>
            </div>
        </div>
        <div class="container">
            <h1 class="form-title">Lista de Exemplares</h1>
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>ID do Livro</th>
                    <th>Número do Exemplar</th>
                    <th>Status</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    try {
                        ExemplarDAO exemplarDAO = new ExemplarDAO();
                        ArrayList<ExemplarDTO> lista = exemplarDAO.ListarExemplar();
                        for (ExemplarDTO exemplar : lista) {
                %>
                <tr>
                    <td><%= exemplar.getId()%></td>
                    <td><%= exemplar.getIdLivro()%></td>
                    <td><%= exemplar.getNumeroDoExemplar()%></td>
                    <td><%= exemplar.getStatus()%></td>

                    <!-- No código abaixo estou passando as informações da lista
                    para a outra página a partir do clique do usuário no link-->
                    <td>
                        <a href="formAlterarExemplar.jsp?id=<%= exemplar.getId()%>
                           &id_livro=<%= exemplar.getIdLivro()%>
                           &numero_do_exemplar=<%= exemplar.getNumeroDoExemplar()%>
                           &status=<%= exemplar.getStatus()%>">Alterar</a>
                    </td>

                    <!-- No código abaixo estou passando as informações da lista
                    para a outra página a partir do clique do usuário no link-->
                    <td>
                        <a href="formExcluirExemplar.jsp?id=<%= exemplar.getId()%>
                           &id_livro=<%= exemplar.getIdLivro()%>
                           &numero_do_exemplar=<%= exemplar.getNumeroDoExemplar()%>
                           &status=<%= exemplar.getStatus()%>">Excluir</a>
                    </td>

                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

            <div class="button-container">
                <form action="formInserirExemplar.jsp">
                    <button class="button" type="submit">Inserir novo exemplar</button>
                </form>
            </div>
        </div>
    </body>
</html>
