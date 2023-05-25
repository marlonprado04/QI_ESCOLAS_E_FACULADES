<%@page import="modeloDAO.LivroDAO"%>
<%@page import="modeloDTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da inserção do livro</title>

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

        <% try {
                // Criando objeto da classe LivroDTO para fazer a transferência de informações
                // do formulário para a classe livro
                LivroDTO objLivroDTO = new LivroDTO();

                // Passando as informações do formulário através do comando request.getParameter
                objLivroDTO.setTitulo(request.getParameter("titulo"));
                objLivroDTO.setEditora(request.getParameter("editora"));
                objLivroDTO.setAnoPublicacao(request.getParameter("ano_publicacao"));
                objLivroDTO.setGenero(request.getParameter("genero"));
                objLivroDTO.setIsbn(request.getParameter("isbn"));

                // Criando objeto da classe LivroDAO para fazer a operação de cadastro
                // no banco de dados a partir da classe LivroDTO
                LivroDAO objLivroDAO = new LivroDAO();

                // Cadastrando livro a partir da função CadastrarLivro dentro da classe LivroDAO
                // usando os parâmetros da classe LivroDTO
                objLivroDAO.CadastrarLivro(objLivroDTO);

                // Imprimindo na tela a informação de que o livro foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro cadastrado com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirLivro.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarLivro.jsp'>Ir para lista de livros</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro não cadastrado devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirLivro.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarLivro.jsp'>Ir para lista de livros</a>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
