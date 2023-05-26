<%-- 
    Document   : formAlterarLivro
    Created on : 20 de mai. de 2023, 20:48:08
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar livro</title>
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
        <h1 class="form-title">Informações do livro a ser alterado: </h1>

        <form action="codeAlterarLivro.jsp" method="POST">
            <div class="form-container">
                <div class="form-row">
                    <label class="form-label">ID do Livro:</label>
                    <input class="form-input" type="text" name="id_livro" value="<%= request.getParameter("id_livro")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Título do Livro:</label>
                    <input class="form-input" type="text" name="titulo_livro" value="<%= request.getParameter("titulo_livro")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Editora:</label>
                    <input class="form-input" type="text" name="editora" value="<%= request.getParameter("editora")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Ano de Publicação:</label>
                    <input class="form-input" type="text" name="ano_publicacao" value="<%= request.getParameter("ano_publicacao")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Gênero:</label>
                    <input class="form-input" type="text" name="genero" value="<%= request.getParameter("genero")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">ISBN:</label>
                    <input class="form-input" type="text" name="isbn" value="<%= request.getParameter("isbn")%>">
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeAlterarLivro.jsp'">Alterar livro</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar Livros</button>
                </div>
            </div>
        </form>
    </body>
</html>
