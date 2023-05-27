<%@page import="modeloDAO.LivroDAO"%>
<%@page import="modeloDTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Alteração de livro</title>
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
        <%
            try {
                // Criando objeto da classe LIVRODTO para fazer a transferência de informações
                // do formulário para a classe LIVRO
                LivroDTO objLivroDTO = new LivroDTO();

                // Passando TODAS informações do formulário através do comando request.getParameter
                // para ALTERAR TODOS OS CAMPOS apenas do LIVRO com o ID informado
                objLivroDTO.setId(Integer.parseInt(request.getParameter("id").trim()));
                objLivroDTO.setTitulo(request.getParameter("titulo"));
                objLivroDTO.setEditora(request.getParameter("editora"));
                objLivroDTO.setAnoPublicacao(request.getParameter("ano_publicacao"));
                objLivroDTO.setGenero(request.getParameter("genero"));
                objLivroDTO.setIsbn(request.getParameter("isbn"));

                // Criando objeto da classe LIVRODAO para fazer a operação de ALTERAÇÃO
                // no banco de dados a partir da classe LIVRODTO
                LivroDAO objLivroDAO = new LivroDAO();

                // ALTERANDO LIVRO a partir da função ALTERAR dentro da classe LIVRODAO
                // isso tudo pegando os parâmetros da classe LIVRODTO
                objLivroDAO.AlterarLivro(objLivroDTO);

                // Printando na tela a informação de que o livro foi alterado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro alterado com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirLivro.jsp'>Inserir novo livro</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
                out.println("</div>");
            } catch (Exception e) {
                // Printando na tela a informação de que o livro não foi alterado devido a algum erro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro não alterado devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirLivro.jsp'>Cadastrar novo livro</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
            }
        %>
    </body>
</html>
