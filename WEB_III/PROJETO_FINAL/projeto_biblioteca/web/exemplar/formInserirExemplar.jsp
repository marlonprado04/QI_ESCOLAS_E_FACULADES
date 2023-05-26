<%@page import="java.util.ArrayList"%>
<%@ page import="modeloDAO.LivroDAO" %>
<%@ page import="modeloDTO.LivroDTO" %>
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
                <a href="aluno/codeListarAluno.jsp">Alunos</a>
                <a href="livro/codeListarLivro.jsp">Livros</a>
                <a href="autor/codeListarAutor.jsp">Autores</a>
                <a href="exemplar/codeListarExemplar.jsp">Exemplares</a>
                <a href="emprestimo/codeListarEmprestimo.jsp">Empréstimos</a>
            </div>
        </div>

        <h1 class="form-title">Cadastrar novo exemplar</h1>

        <form action="codeInserirExemplar.jsp" method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="id_livro">ID do Livro:</label>
                    <input class="form-input" type="text" id="id_livro" name="id_livro" placeholder="ID do livro" required <%= request.getParameter("id")%>>
                </div>
                <div class="form-row">
                    <label class="form-label" for="titulo_livro">Titulo do Livro:</label>
                    <input class="form-input" type="text" id="titulo_livro" name="titulo_livro" placeholder="Titulo do livro" required value="<%= request.getParameter("titulo")%>">
                </div>

                <div class="form-row">
                    <label class="form-label" for="numero_exemplar">Número do Exemplar:</label>
                    <input class="form-input" type="text" id="numero_exemplar" name="numero_exemplar" placeholder="Ex: 1" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="status">Status:</label>
                    <select class="form-input" id="status" name="status" required>
                        <option value="" disabled selected>Selecione o status</option>
                        <option value="Disponível">Disponível</option>
                        <option value="Emprestado">Emprestado</option>
                    </select>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit">Cadastrar</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarExemplar.jsp'">Listar Exemplares</button>
                </div>
            </div>

        </form>

    </body>
</html>
