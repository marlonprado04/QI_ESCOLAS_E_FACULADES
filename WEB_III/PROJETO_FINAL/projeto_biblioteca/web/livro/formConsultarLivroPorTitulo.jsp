<%-- 
    Document   : formConsultarLivroPorTitulo
    Created on : 26 de mai. de 2023, 19:42:05
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar livro</title>
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

        <h1 class="form-title">Consultar livro:</h1>

        <form method="POST" action="codeConsultarLivroPorTitulo.jsp">
            <div class="form-container">
                <div class="form-group">
                    <label class="form-label">Titulo</label>
                    <input class="form-control" type="text" name="titulo" placeholder="Digite aqui o titulo do livro...">
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeConsultarLivroPorTitulo.jsp'">Realizar consulta</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar Livros</button>
                </div>
            </div>
        </form>


    </body>
</html>
