<%-- 
    Document   : formExcluirExemplar
    Created on : 20 de mai. de 2023, 20:48:08
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir exemplar</title>
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
        <h1 class="form-title">Informações do exemplar a ser excluído: </h1>

        <form action="codeExcluirExemplar.jsp" method="POST">
            <div class="form-container">
                <div class="form-group">
                    <label class="form-label">ID do exemplar</label>
                    <input class="form-control" type="text" name="id" value="<%= request.getParameter("id")%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label">Código do livro:</label>
                    <input class="form-control" type="text" name="id_livro" value="<%= request.getParameter("id_livro")%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label">Nome do livro:</label>
                    <input class="form-control" type="text" name="titulo_livro" value="<%= request.getParameter("titulo_livro")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Observação: </label>
                    <input class="form-control" type="text" name="obs_do_exemplar" value="<%= request.getParameter("obs_do_exemplar")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Status: </label>
                    <input class="form-control" type="text" name="status" value="<%= request.getParameter("status")%>" readonly>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeExcluirExemplar.jsp'">Realizar exclusão</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarExemplar.jsp'">Listar exemplares</button>
                </div>
            </div>
        </form>
    </body>