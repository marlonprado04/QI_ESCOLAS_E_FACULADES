<%@page import="java.util.ArrayList"%>
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

        <h1 class="form-title">Cadastrar novo exemplar</h1>

        <form action="codeInserirExemplar.jsp" method="POST">

            <div class="form-container">
                <div class="form-group">
                    <label class="form-label" for="id_livro">ID do Livro:</label>
                    <input class="form-control" type="text" id="id_livro" name="id_livro" placeholder="ID do livro" required value="<%= request.getParameter("id_livro").trim()%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label" for="titulo_livro">Titulo do Livro:</label>
                    <input class="form-control" type="text" id="titulo_livro" name="titulo_livro" placeholder="Titulo do livro" required value="<%= request.getParameter("titulo_livro")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label" for="obs_do_exemplar">Observação: </label>
                    <input class="form-control" type="text" id="obs_do_exemplar" name="obs_do_exemplar" placeholder="Ex: Exemplar com assinatura" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="status">Status:</label>
                    <select class="form-control" id="status" name="status" readonly required>
                        <option value="" disabled readonly>Selecione o status</option>
                        <option value="Disponível" selected readonly>Disponível</option>
                    </select>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit">Cadastrar</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarExemplarDoLivro.jsp'">Listar exemplares deste livro</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarExemplar.jsp'">Listar exemplares </button>

                </div>
            </div>

        </form>

    </body>
</html>
