<%@page import="modeloDAO.ExemplarDAO"%>
<%@page import="modeloDTO.ExemplarDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da inserção do exemplar</title>

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
                // Criando objeto da classe ExemplarDTO para fazer a transferência de informações
                // do formulário para a classe exemplar
                ExemplarDTO objExemplarDTO = new ExemplarDTO();

                // Passando as informações do formulário através do comando request.getParameter
                objExemplarDTO.setIdLivro(Integer.parseInt(request.getParameter("id_livro")));
                objExemplarDTO.setNumeroDoExemplar(Integer.parseInt(request.getParameter("numero_do_exemplar")));
                objExemplarDTO.setStatus(request.getParameter("status"));

                // Criando objeto da classe ExemplarDAO para fazer a operação de cadastro
                // no banco de dados a partir da classe ExemplarDTO
                ExemplarDAO objExemplarDAO = new ExemplarDAO();

                // Cadastrando exemplar a partir da função cadastrarExemplar dentro da classe ExemplarDAO
                // usando os parâmetros da classe ExemplarDTO
                objExemplarDAO.CadastrarExemplar(objExemplarDTO);

                // Imprimindo na tela a informação de que o exemplar foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar cadastrado com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='../livro/codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar não cadastrado devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='../livro/codeListarLivro.jsp'>Listar livros</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
