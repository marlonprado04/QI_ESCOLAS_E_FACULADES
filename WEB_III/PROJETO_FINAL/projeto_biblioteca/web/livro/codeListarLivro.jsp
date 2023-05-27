<%@page import="modeloDTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Livros</title>
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
            <h1 class="form-title">Lista de Livros</h1>
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Editora</th>
                    <th>Ano de Publicação</th>
                    <th>Gênero</th>
                    <th>ISBN</th>
                    <th>Listar exemplares</th>
                    <th>Cadastrar exemplar</th>
                    <th>Alterar</th>
                    <th>Excluir</th>

                </tr>
                <%
                    try {
                        LivroDAO objLivroDAO = new LivroDAO();
                        ArrayList<LivroDTO> lista = objLivroDAO.ListarLivro();
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getTitulo()%></td>
                    <td><%= lista.get(num).getEditora()%></td>
                    <td><%= lista.get(num).getAnoPublicacao()%></td>
                    <td><%= lista.get(num).getGenero()%></td>
                    <td><%= lista.get(num).getIsbn()%></td>

                    <td>
                        <a href="../exemplar/codeListarExemplar.jsp">Listar</a>
                    </td>
                    <td>
                        <a href="../exemplar/formInserirExemplar.jsp?id_livro=<%= lista.get(num).getId()%>
                           &titulo_livro=<%= lista.get(num).getTitulo()%>">Inserir</a>
                    </td>
                    <td>
                        <a href="formAlterarLivro.jsp?id=<%= lista.get(num).getId()%>
                           &titulo=<%= lista.get(num).getTitulo()%>
                           &editora=<%= lista.get(num).getEditora()%>
                           &ano_publicacao=<%= lista.get(num).getAnoPublicacao()%>
                           &genero=<%= lista.get(num).getGenero()%>
                           &isbn=<%= lista.get(num).getIsbn()%>">Alterar</a>
                    </td>
                    <td>
                        <a href="formExcluirLivro.jsp?id=<%= lista.get(num).getId()%>
                           &titulo=<%= lista.get(num).getTitulo()%>
                           &editora=<%= lista.get(num).getEditora()%>
                           &ano_publicacao=<%= lista.get(num).getAnoPublicacao()%>
                           &genero=<%= lista.get(num).getGenero()%>
                           &isbn=<%= lista.get(num).getIsbn()%>">Excluir</a>
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
                <form action="formInserirLivro.jsp">
                    <button class="form-button" type="submit">Inserir novo livro</button>
                </form>
            </div>
        </div>
    </body>
</html>
