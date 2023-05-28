<%-- 
    Document   : formExcluirAluno
    Created on : 20 de mai. de 2023, 20:44:28
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../estilos/style.css">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excvluir aluno</title>
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

        <h1 class="form-title">Informações do aluno a ser excluído: </h1>

        <form action="codeExcluirAluno.jsp" method="POST">
            <div class="form-container">
                <div class="form-row">
                    <label class="form-label">Código:</label>
                    <input class="form-input" type="text" name="id" value="<%= request.getParameter("id")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Nome:</label>
                    <input class="form-input" type="text" name="nome" value="<%= request.getParameter("nome")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Sobrenome:</label>
                    <input class="form-input" type="text" name="sobrenome" value="<%= request.getParameter("sobrenome")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">CPF:</label>
                    <input class="form-input" type="text" name="cpf" value="<%= request.getParameter("cpf")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Telefone:</label>
                    <input class="form-input" type="text" name="telefone" value="<%= request.getParameter("telefone")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Email:</label>
                    <input class="form-input" type="text" name="email" value="<%= request.getParameter("email")%>">
                </div>

                <div class="form-row">
                    <label class="form-label">Curso: </label>
                    <input class="form-input" type="text" name="curso" value="<%= request.getParameter("curso")%>">
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit" onclick="location.href = 'codeExcluirAluno.jsp'">Excluir aluno</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarAluno.jsp'">Listar Alunos</button>
                </div>
            </div>
        </form>


    </body>
</html>
