<%-- 
    Document   : codeExcluirExemplar
    Created on : 20 de mai. de 2023, 21:41:33
    Author     : marlo
--%>

<%@page import="modeloDAO.ExemplarDAO"%>
<%@page import="modeloDTO.ExemplarDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Exclusão de exemplar</title>
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
                // Criação do objeto ExemplarDTO para transferência de informações do formulário para a classe ExemplarDTO
                ExemplarDTO objExemplarDTO = new ExemplarDTO();

                // Preenchimento do ID do exemplar a ser excluído através do parâmetro recebido do formulário
                objExemplarDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Criação do objeto ExemplarDAO para realizar a exclusão do exemplar no banco de dados
                ExemplarDAO objExemplarDAO = new ExemplarDAO();

                // Exclusão do exemplar utilizando a função excluirExemplar do objeto ExemplarDAO
                objExemplarDAO.ExcluirExemplar(objExemplarDTO);

                // Exibição da mensagem de sucesso após a exclusão do exemplar
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar excluído com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirExemplar.jsp'>Cadastrar novo exemplar</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {
                // Em caso de exceção, exibição da mensagem de erro
                ExemplarDTO objExemplarDTO = new ExemplarDTO();
                objExemplarDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar não excluído devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirExemplar.jsp'>Cadastrar novo exemplar</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
