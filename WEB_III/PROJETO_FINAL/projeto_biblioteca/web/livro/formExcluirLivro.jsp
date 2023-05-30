<%-- 
    Document   : formExcluirLivro
    Created on : 20 de mai. de 2023, 20:44:28
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../estilos/style.css">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir livro</title>
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

        <h1 class="form-title">Informações do livro a ser excluído: </h1>

        <form action="codeExcluirLivro.jsp" method="POST">
            <div class="form-container">
                <div class="form-group">
                    <label class="form-label">ID:</label>
                    <input class="form-control" type="text" name="id" value="<%= request.getParameter("id")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Título:</label>
                    <input class="form-control" type="text" name="titulo" value="<%= request.getParameter("titulo")%>" readonly> 
                </div>

                <div class="form-group">
                    <label class="form-label">Editora:</label>
                    <input class="form-control" type="text" name="editora" value="<%= request.getParameter("editora")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Ano de Publicação:</label>
                    <input class="form-control" type="text" name="ano_publicacao" value="<%= request.getParameter("ano_publicacao")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Gênero:</label>
                    <input class="form-control" type="text" name="genero" value="<%= request.getParameter("genero")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">ISBN:</label>
                    <input class="form-control" type="text" name="isbn" value="<%= request.getParameter("isbn")%>" readonly>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeExcluirLivro.jsp'">Excluir livro</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar Livros</button>
                </div>
            </div>
        </form>


    </body>
</html>
