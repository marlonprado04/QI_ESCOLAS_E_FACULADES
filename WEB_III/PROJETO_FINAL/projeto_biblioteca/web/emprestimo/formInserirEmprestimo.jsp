<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de empréstimo</title>
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

        <h1 class="form-title">Cadastrar novo empréstimo</h1>

        <form action="codeInserirEmprestimo.jsp" method="POST">
            <!-- Informações do aluno-->
            <div class="form-container">

                <div class="form-row">
                    <label class="form-label" for="id_aluno">ID do Aluno:</label>
                    <input class="form-input" type="text" id="id_aluno" name="id_aluno" placeholder="Ex: 123" value="<%=request.getParameter("id_aluno")%>" required>
                </div>
                <div class="form-row">
                    <label class="form-label" for="nome">Nome:</label>
                    <input class="form-input" type="text" id="nome" name="nome" placeholder="Ex: Roberta" value="<%=request.getParameter("nome")%>" required>
                </div>
            </div>

            <!-- Informações do livro-->
            <div class="form-container">

                <div class="form-row">
                    <label class="form-label" for="id_livro">ID do Livro:</label>
                    <input class="form-input" type="text" id="id_livro" name="id_livro" placeholder="Ex: 123" value="<%=request.getParameter("id_livro")%>" required>
                </div>
                <div class="form-row">
                    <label class="form-label" for="titulo">Titulo</label>
                    <input class="form-input" type="text" id="titulo" name="titulo" placeholder="Ex: Dom Casmurro" value="<%=request.getParameter("titulo")%>" required>
                </div>
            </div>

            <!-- Informações do exemplar-->
            <div class="form-container">

                <div class="form-row">
                    <label class="form-label" for="id_exemplar">ID do Exemplar:</label>
                    <input class="form-input" type="text" id="id_exemplar" name="id_exemplar" placeholder="Ex: 456" value="<%=request.getParameter("id_exemplar")%>"required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="obs_exemplar">Observação: </label>
                    <input class="form-input" type="text" id="obs_exemplar" name="obs_exemplar" placeholder="Ex: 456" value="<%=request.getParameter("obs_exemplar")%>"required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="status">Status:</label>
                    <select class="form-input" id="status" name="status" readonly required>
                        <option value="" disabled readonly>Selecione o status</option>
                        <option value="Emprestado" selected readonly>Emprestado</option>
                    </select>
                </div>
            </div>
            <!-- Informações do empréstimo-->

            <div class="form-container">

                <div class="form-row">
                    <label class="form-label" for="data_emprestimo">Data de Empréstimo:</label>
                    <input class="form-input" type="date" id="data_emprestimo" name="data_emprestimo" placeholder="Ex: 2023-05-20" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="data_devolucao">Data de Devolução:</label>
                    <input class="form-input" type="date" id="data_devolucao" name="data_devolucao" placeholder="Ex: 2023-06-01" required>
                </div>
            </div>

            <div class="form-button-container">
                <button class="form-button btn-submit" type="submit">Cadastrar</button>
                <button class="form-button" type="button" onclick="location.href = 'codeListarEmprestimo.jsp'">Listar empréstimos</button>
                <button class="form-button" type="button" onclick="location.href = 'formConsultarEmprestimoPorAluno.jsp'">Consultar Por Aluno</button>
            </div>
        </div>

    </form>

</body>
</html>
