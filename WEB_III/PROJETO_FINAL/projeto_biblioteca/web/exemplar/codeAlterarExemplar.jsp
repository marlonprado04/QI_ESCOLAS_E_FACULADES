<%@page import="modeloDAO.ExemplarDAO"%>
<%@page import="modeloDTO.ExemplarDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Alteração de exemplar</title>
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
        <%
            try {
                // Criando objeto da classe ExemplarDTO para fazer a transferência de informações
                // do formulário para a classe ExemplarDTO
                ExemplarDTO objExemplarDTO = new ExemplarDTO();

                // Passando todas as informações do formulário através do comando request.getParameter
                // para alterar todos os campos apenas do exemplar com o ID informado
                objExemplarDTO.setId(Integer.parseInt(request.getParameter("id").trim()));
                objExemplarDTO.setObsDoExemplar(request.getParameter("obs_do_exemplar"));
                objExemplarDTO.setStatus(request.getParameter("status"));

                // Criando objeto da classe ExemplarDAO para fazer a operação de ALTERAÇÃO
                // no banco de dados a partir da classe ExemplarDTO
                ExemplarDAO objExemplarDAO = new ExemplarDAO();

                // Alterando o exemplar através da função alterarExemplar dentro da classe ExemplarDAO
                // utilizando os parâmetros da classe ExemplarDTO
                objExemplarDAO.AlterarExemplar(objExemplarDTO);

                // Exibindo na tela a mensagem de que o exemplar foi alterado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar alterado com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirExemplar.jsp'>Inserir novo exemplar</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
                out.println("</div>");
            } catch (Exception e) {
                // Exibindo na tela a mensagem de que o exemplar não foi alterado devido a algum erro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Exemplar não alterado devido a algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirExemplar.jsp'>Cadastrar novo exemplar</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarExemplar.jsp'>Listar exemplares</a>");
                out.println("</div>");
            }
        %>
    </body>
</html>
