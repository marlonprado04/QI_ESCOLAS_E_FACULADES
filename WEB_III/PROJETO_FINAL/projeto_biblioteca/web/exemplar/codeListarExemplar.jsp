<%@page import="modeloDTO.ExemplarDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ExemplarDAO"%>
<%@page import="modeloDAO.LivroDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <th>ID do exemplar</th>
                    <th>Código do Livro</th>
                    <th>Nome do Livro</th>
                    <th>Status</th>
                    <th>Observação</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    try {
                        ExemplarDAO objExemplarDAO = new ExemplarDAO();
                        LivroDAO objLivroDAO = new LivroDAO();
                        ArrayList<ExemplarDTO> lista = objExemplarDAO.ListarExemplar();
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getIdLivro()%></td>
                    <td><%= objLivroDAO.obterTituloLivro(lista.get(num).getIdLivro())%></td>
                    <td><%= lista.get(num).getStatus()%></td>
                    <td><%= lista.get(num).getObsDoExemplar()%></td>
                    <td>
                        <a href="formAlterarExemplar.jsp?id=<%= lista.get(num).getId()%>
                           &id_livro=<%= lista.get(num).getIdLivro()%>
                           &titulo_livro=<%= objLivroDAO.obterTituloLivro(lista.get(num).getIdLivro())%>
                           &obs_do_exemplar=<%= lista.get(num).getObsDoExemplar()%>
                           &status=<%= lista.get(num).getStatus()%>">Editar</a>
                    </td>
                    <td>
                        <a href="formExcluirExemplar.jsp?id=<%= lista.get(num).getId()%>
                           &id_livro=<%= lista.get(num).getIdLivro()%>
                           &titulo_livro=<%= objLivroDAO.obterTituloLivro(lista.get(num).getIdLivro())%>
                           &obs_do_exemplar=<%= lista.get(num).getObsDoExemplar()%>
                           &status=<%= lista.get(num).getStatus()%>">Excluir</a>
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
                <form action="../livro/codeListarLivro.jsp">
                    <button class="form-button" type="submit">Ir para lista de livros</button>
                </form>
            </div>
        </div>
    </body>
</html>
