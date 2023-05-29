<%@page import="modeloDTO.ExemplarDTO"%>
<%@page import="modeloDAO.ExemplarDAO"%>
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

        <!-- SESSÃO COM INFORMAÇÕES DO ALUNO-->

        <form method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="id_aluno">ID</label>
                    <input class="form-input" type="text" id="id_aluno" name="id_aluno" placeholder="ID do aluno" required value="<%= request.getParameter("id_aluno").trim()%>" readonly>
                </div>
                <div class="form-row">
                    <label class="form-label" for="nome">Nome</label>
                    <input class="form-input" type="text" id="nome" name="nome" placeholder="Nome do aluno" required value="<%= request.getParameter("nome")%>" readonly>
                </div>
                <div class="form-row">
                    <label class="form-label" for="sobrenome">Sobrenome</label>
                    <input class="form-input" type="text" id="sobrenome" name="sobrenome" placeholder="Sobrenome do aluno" required value="<%= request.getParameter("sobrenome")%>" readonly>
                </div>
            </div>
        </form>

        <!-- SESSÃO COM INFORMAÇÕES DO LIVRO -->

        <form method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="id_livro">ID</label>
                    <input class="form-input" type="text" id="id_livro" name="id_livro" placeholder="ID do livro" required value="<%= request.getParameter("id_livro")%>" readonly>
                </div>

                <%
                    LivroDAO objLivroDAO = new LivroDAO();
                    int idLivro = Integer.parseInt(request.getParameter("id_livro"));
                %>
                <div class="form-row">
                    <label class="form-label" for="titulo">Titulo</label>
                    <input class="form-input" type="text" id="titulo" name="titulo" placeholder="Titulo do aluno" required value="<%=objLivroDAO.obterTituloLivro(idLivro)%>" readonly>
                </div>
            </div>
        </form>

        <!-- SESSÃO COM INFORMAÇÕES DO LIVROS -->
        <div class="container">
            <h1 class="form-title">Lista de Exemplares</h1>
            <table class="table">
                <tr>
                    <th>ID do exemplar</th>
                    <th>Código do Livro</th>
                    <th>Nome do Livro</th>
                    <th>Status</th>
                    <th>Observação</th>
                    <th>Incluir</th>
                </tr>
                <%
                    try {
                        ExemplarDAO objExemplarDAO = new ExemplarDAO();
                        ArrayList<ExemplarDTO> lista = objExemplarDAO.ListarExemplarDoLivro(idLivro);
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getIdLivro()%></td>
                    <td><%= objLivroDAO.obterTituloLivro(lista.get(num).getIdLivro())%></td>
                    <td><%= lista.get(num).getStatus()%></td>
                    <td><%= lista.get(num).getObsDoExemplar()%></td>
                    <td>
                        <a href="formInserirEmprestimo.jsp?id_aluno=<%= request.getParameter("id_aluno").trim()%>
                           &nome=<%= request.getParameter("nome")%>
                           &id_livro=<%= request.getParameter("id_livro")%>
                           &titulo=<%=objLivroDAO.obterTituloLivro(idLivro).trim()%>
                           &id_exemplar=<%= lista.get(num).getId()%>
                           &obs_exemplar=<%= lista.get(num).getObsDoExemplar()%>">Incluir</a>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

        </div>

    </body>
</html>
