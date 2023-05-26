<%-- 
    Document   : formConsultarNome
    Created on : 26 de mai. de 2023, 19:42:05
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Aluno</title>
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
        
        <h1 class="form-title">Consultar aluno:</h1>

        <form method="POST" action="codeConsultarAlunoPorNome.jsp">
            <div class="form-container">
                <div class="form-row">
                    <label class="form-label">Nome:</label>
                    <input class="form-input" type="text" name="nome" placeholder="Digite aqui o nome do aluno...">
                </div>
                
                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeConsultarAlunoPorNome.jsp'">Consultar Por Nome</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarAluno.jsp'">Listar Alunos</button>
                </div>
            </div>
        </form>


    </body>
</html>
