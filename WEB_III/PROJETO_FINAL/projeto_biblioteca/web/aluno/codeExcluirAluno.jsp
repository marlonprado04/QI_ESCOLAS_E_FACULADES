<%-- 
    Document   : codeExcluirAluno
    Created on : 20 de mai. de 2023, 21:41:33
    Author     : marlo
--%>

<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.AlunoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Exclusão de aluno</title>
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
        <% try {
                // Criando objeto da classe ALUNODTO para fazer a transferência de informações
                // do formulário para a classe ALUNO
                AlunoDTO objAlunoDTO = new AlunoDTO();

                // Passando o id do formulário através do comando request.getparameter
                // para EXCLUIR apenas o ALUNO com o id informado
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Criando objeto da classe ALUNODAO para fazer a operação de EXCLUSÃO
                // no banco de dados a partir da classe ALUNODTO
                AlunoDAO objAlunoDAO = new AlunoDAO();

                // EXCLUINDO ALUNO a partir da função EXCLUIRALUNO dentro classe ALINODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objAlunoDAO.ExcluirAluno(objAlunoDTO);

                //Printando na tela a informação de que o aluno foi excluído com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno excluído com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirAluno.jsp'>Cadastrar novo aluno</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarAluno.jsp'>Listar alunos</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {

                AlunoDTO objAlunoDTO = new AlunoDTO();
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                //Printando na tela a informação de que o aluno foi não foi excluído 
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno não excluído devido algum erro!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formInserirAluno.jsp'>Cadastrar novo aluno</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarAluno.jsp'>Listar alunos</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
