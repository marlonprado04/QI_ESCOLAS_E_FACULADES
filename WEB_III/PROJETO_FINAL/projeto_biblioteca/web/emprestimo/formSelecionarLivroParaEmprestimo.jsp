<%@page import="java.util.ArrayList"%>
<%@page import="modeloDTO.LivroDTO"%>
<%@page import="modeloDAO.LivroDAO"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de exemplar</title>
        <style>
            <%@ include file="../estilos/style.css" %>
        </style>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div class="menu">
                <a href="../aluno/codeListarAluno.jsp">Alunos</a>
                <a href="../livro/codeListarLivro.jsp">Livros</a>
                <a href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                <a href="../emprestimo/codeListarEmprestimo.jsp">Empréstimos</a>
            </div>
        </div>

        <h1 class="form-title">Informações do aluno</h1>



        <form method="POST">

            <!-- SESSÃO COM INFORMAÇÕES DO ALUNO-->
            <div class="form-container">
                <div class="form-group">
                    <label class="form-label" for="id_aluno">ID</label>
                    <input class="form-control" type="text" id="id_aluno" name="id_aluno" placeholder="ID do aluno" required value="<%= request.getParameter("id_aluno").trim()%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label" for="nome">Nome</label>
                    <input class="form-control" type="text" id="nome" name="nome" placeholder="Nome do aluno" required value="<%= request.getParameter("nome")%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label" for="sobrenome">Sobrenome</label>
                    <input class="form-control" type="text" id="sobrenome" name="sobrenome" placeholder="Sobrenome do aluno" required value="<%= request.getParameter("sobrenome")%>" readonly>
                </div>
            </div>
        </form>

        <!-- SESSÃO COM INFORMAÇÕES DOS LIVROS -->
        <div class="container">
            <h1 class="form-title">Lista de Livros</h1>
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Editora</th>
                    <th>Ano de Publicação</th>
                    <th>Gênero</th>
                    <th>ISBN</th>
                    <th>Listar exemplares disponíveis</th>

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
                    <td><%= lista.get(num).getAutor()%></td>
                    <td><%= lista.get(num).getEditora()%></td>
                    <td><%= lista.get(num).getAnoPublicacao()%></td>
                    <td><%= lista.get(num).getGenero()%></td>
                    <td><%= lista.get(num).getIsbn()%></td>
                    <td>
                        <a href="../emprestimo/formSelecionarExemplarParaEmprestimo.jsp?id_aluno=<%= request.getParameter("id_aluno").trim()%>
                           &nome=<%= request.getParameter("nome")%>
                           &sobrenome=<%= request.getParameter("sobrenome")%>
                           &id_livro=<%= lista.get(num).getId()%>">Listar</a>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

    </body>
</html>
