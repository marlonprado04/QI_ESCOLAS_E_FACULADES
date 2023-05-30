<%-- 
    Document   : formAlterarEmprestimo
    Created on : 20 de mai. de 2023, 20:48:08
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar empréstimo</title>
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
        <h1 class="form-title">Informações do empréstimo a ser alterado: </h1>

        <form action="codeAlterarEmprestimo.jsp" method="POST">
            <div class="form-container">
                <div class="form-group">
                    <label class="form-label">ID do empréstimo</label>
                    <input class="form-control" type="text" name="id" value="<%= request.getParameter("id")%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label">ID do aluno</label>
                    <input class="form-control" type="text" name="id_aluno" value="<%= request.getParameter("id_aluno")%>" readonly>
                </div>
                <div class="form-group">
                    <label class="form-label">ID do exemplar</label>
                    <input class="form-control" type="text" name="id_exemplar" value="<%= request.getParameter("id_exemplar")%>" readonly>
                </div>

                <div class="form-group">
                    <label class="form-label">Data de empréstimo: </label>
                    <input class="form-control" type="date" name="data_emprestimo" value="<%= request.getParameter("data_emprestimo")%>">
                </div>

                <div class="form-group">
                    <label class="form-label">Data de devolução: </label>
                    <input class="form-control" type="date" name="data_devolucao" value="<%= request.getParameter("data_devolucao")%>">
                </div>

                <div class="form-group">
                    <label class="form-label" for="status_emprestimo">Status:</label>
                    <select class="form-control" id="status_emprestimo" name="status_emprestimo" required>
                        <option value="<%= request.getParameter("status")%>" selected><%= request.getParameter("status")%></option>
                        <option value="Empenhado">Empenhado</option>
                        <option value="Finalizado">Finalizado</option>
                        <option value="Atrasado">Atrasado</option>
                    </select>
                </div>

                <div class="form-button-container">
                    <button class="form-button" type="submit">Realizar alteração</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarEmprestimo.jsp'">Listar empréstimos</button>
                </div>
            </div>
        </form>
    </body>