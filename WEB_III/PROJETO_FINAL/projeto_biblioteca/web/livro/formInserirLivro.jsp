<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de livro</title>
        <style>
            <%@include file="../estilos/style.css" %>
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
        <h1 class="form-title">Cadastrar novo livro</h1>

        <form action="codeInserirLivro.jsp" method="POST">

            <div class="form-container">
                <div class="form-group">
                    <label class="form-label" for="titulo">Título:</label>
                    <input class="form-control" type="text" id="titulo" name="titulo" placeholder="Ex: Dom Quixote" required>
                </div>
                
                <div class="form-group">
                    <label class="form-label" for="autor">Autores: </label>
                    <input class="form-control" type="text" id="autor" name="autor" placeholder="Ex: Machado de Assis" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="editora">Editora:</label>
                    <input class="form-control" type="text" id="editora" name="editora" placeholder="Ex: Companhia das Letras" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="ano_publicacao">Ano de Publicação:</label>
                    <input class="form-control" type="text" id="ano_publicacao" name="ano_publicacao" placeholder="Ex: 1605" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="genero">Gênero:</label>
                    <input class="form-control" type="text" id="genero" name="genero" placeholder="Ex: Romance" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="isbn">ISBN:</label>
                    <input class="form-control" type="text" id="isbn" name="isbn" placeholder="Ex: 978-85-359-0277-9" required>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit">Cadastrar</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar Livros</button>
                </div>
            </div>

        </form>

    </body>
</html>
