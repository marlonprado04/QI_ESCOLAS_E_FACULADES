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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Aluno</title>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div>
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item">
                        <a class="nav-link active" href="../aluno/codeListarAluno.jsp">Alunos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../livro/codeListarLivro.jsp">Livros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../emprestimo/codeListarEmprestimo.jsp">Empréstimo</a>
                    </li>
                </ul>
                </ul>
            </div>
        </div>

        <h1 class="form-title">Consultar aluno por nome:</h1>

        <form method="POST" action="codeConsultarAlunoPorNome.jsp">
            <div class="form-container">
                <div class="form-group">
                    <label>Nome:</label>
                    <input class="form-control" type="text" name="nome" placeholder="Digite aqui o nome do aluno...">
                </div>

                <div class="form-button-container">
                    <button class="btn btn-primary" type="submit" onclick="location.href = 'codeConsultarAlunoPorNome.jsp'">Realizar consulta</button>
                    <button class="btn btn-secondary" type="button" onclick="location.href = 'codeListarAluno.jsp'">Listar Alunos</button>
                </div>
            </div>
        </form>


    </body>
</html>
