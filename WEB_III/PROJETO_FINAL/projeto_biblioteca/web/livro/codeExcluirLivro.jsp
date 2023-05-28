<%-- 
    Document   : codeExcluirLivro
    Created on : 20 de mai. de 2023, 21:41:33
    Author     : marlo
--%>

<%@page import="modeloDAO.LivroDAO"%>
<%@page import="modeloDTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Exclusão de livro</title>
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
        <%-- Bloco try-catch para tratar possíveis exceções --%>
        <% try {
                // Criação do objeto LivroDTO para transferência de informações do formulário para a classe Livro
                LivroDTO objLivroDTO = new LivroDTO();

                // Preenchimento do ID do livro a ser excluído através do parâmetro recebido do formulário
                objLivroDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Criação do objeto LivroDAO para realizar a exclusão do livro no banco de dados
                LivroDAO objLivroDAO = new LivroDAO();

                // Exclusão do livro utilizando a função ExcluirLivro do objeto LivroDAO
                objLivroDAO.ExcluirLivro(objLivroDTO);

                // Exibição da mensagem de sucesso após a exclusão do livro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro excluído com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirLivro.jsp'>Cadastrar novo livro</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {
                // Em caso de exceção, exibição da mensagem de erro
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro não excluído devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirLivro.jsp'>Cadastrar novo livro</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
