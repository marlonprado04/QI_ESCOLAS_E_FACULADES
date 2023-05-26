<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de aluno</title>
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

        <h1 class="form-title">Cadastrar novo aluno</h1>

        <form action="codeInserirAluno.jsp" method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="nome">Nome:</label>
                    <input class="form-input" type="text" id="nome" name="nome" placeholder="Ex: Joaquim" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="sobrenome">Sobrenome:</label>
                    <input class="form-input" type="text" id="sobrenome" name="sobrenome" placeholder="Ex: da Silva" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="cpf">CPF:</label>
                    <input class="form-input" type="text" id="cpf" name="cpf" placeholder="Ex: 123.456.789-01" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="email">Email:</label>
                    <input class="form-input" type="text" id="email" name="email" placeholder="Ex: joaquimdasilva@gmail.com" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="telefone">Telefone:</label>
                    <input class="form-input" type="text" id="telefone" name="telefone" placeholder="Ex: (51)12345-6789" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="curso">Curso:</label>
                    <input class="form-input" type="text" id="curso" name="curso" placeholder="Ex: Ciência da computação" required>
                </div>

                <div class="form-button-container">
                    <button class="form-button btn-submit" type="submit">Cadastrar</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarAluno.jsp'">Listar alunos</button>
                    <button class="form-button" type="button" onclick="location.href = 'formConsultarAlunoPorNome.jsp'">Consultar Por Nome</button>

                </div>
            </div>

        </form>

    </body>
</html>
