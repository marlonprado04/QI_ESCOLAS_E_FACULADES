<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de livro</title>
    </head>
    <body>

        <h1 class="form-title">Cadastrar novo livro</h1>

        <form action="codeInserirLivro.jsp" method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="titulo">Titulo: </label>
                    <input class="form-input" type="text" id="titulo" name="titulo" placeholder="Ex: Farenheit 451" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="editora">Editora: </label>
                    <input class="form-input" type="text" id="editora" name="editora" placeholder="Ex: Editora Intrínseca" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="ano-publicacao">Ano de publicação: </label>
                    <input class="form-input" type="text" id="ano-publicacao" name="ano-publicacao" placeholder="Ex: 1987" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="genero">Genero: </label>
                    <input class="form-input" type="text" id="genero" name="genero" placeholder="Ex: Ficção" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="isbn">ISBN: </label>
                    <input class="form-input" type="text" id="isbn" name="isbn" placeholder="Ex: 9788525052247" required>
                </div>

                <div class="form-row form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeInserirLivro.jsp'">Cadastrar</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar Livros</button>
                </div>
            </div>

        </form>

    </body>
</html>