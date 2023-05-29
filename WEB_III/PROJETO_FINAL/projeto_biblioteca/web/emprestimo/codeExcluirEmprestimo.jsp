<%-- 
    Document   : codeExcluirExemplar
    Created on : 20 de mai. de 2023, 21:41:33
    Author     : marlo
--%>


<%@page import="modeloDAO.EmprestimoDAO"%>
<%@page import="modeloDTO.EmprestimoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Exclusão de empréstimo</title>
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
                // Criação do objeto EMPRESTIMODTO para transferência de informações do formulário para a classe EMPRESTIMODTO
                EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();

                // Preenchimento do ID do EMPRESTIMO a ser excluído através do parâmetro recebido do formulário
                objEmprestimoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Criação do objeto EMPRESTIMODAO para realizar a exclusão do EMPRESTIMO no banco de dados
                EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();

                // Exclusão do EMPRESTIMO utilizando a função EXCLUIREMPRESTIMO do objeto EMPRESTIMODAO
                objEmprestimoDAO.ExcluirEmprestimo(objEmprestimoDTO);

                // Exibição da mensagem de sucesso após a exclusão do exemplar
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Empréstimo excluído com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarEmprestimo.jsp'>Listar empréstimo</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {
                // Em caso de exceção, exibição da mensagem de erro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Empréstimo não excluído devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarEmprestimo.jsp'>Listar empréstimos</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
