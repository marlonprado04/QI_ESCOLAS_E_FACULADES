<%@page import="modeloDAO.EmprestimoDAO"%>
<%@page import="modeloDTO.EmprestimoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Alteração de empréstimo</title>
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
                // Criando objeto da classe EMPRESTIMODTO para fazer a transferência de informações
                // do formulário para a classe EMPRESTIMODTO
                EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();

                // Passando todas as informações do formulário através do comando request.getParameter
                // para alterar todos os campos apenas do EMPRESTIMO com o ID informado
                objEmprestimoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));
                objEmprestimoDTO.setIdAluno(Integer.parseInt(request.getParameter("id_aluno").trim()));
                objEmprestimoDTO.setIdExemplar(Integer.parseInt(request.getParameter("id_exemplar").trim()));
                objEmprestimoDTO.setDataDevolucao(request.getParameter("data_devolucao"));
                objEmprestimoDTO.setDataEmprestimo(request.getParameter("data_emprestimo"));
                

                // Criando objeto da classe EMPRESTIMODAO para fazer a operação de ALTERAÇÃO
                // no banco de dados a partir da classe EMPRESTIMODAO
                EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();

                // Alterando o exemplar através da função ALTERAREMPRESTIMO dentro da classe EMPRESTIMODAO
                // utilizando os parâmetros da classe EMPRESTIMODAO
                objEmprestimoDAO.AlterarEmprestimo(objEmprestimoDTO);

                // Exibindo na tela a mensagem de que o EMPRÉSTIMO foi alterado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Empréstimo alterado com sucesso!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='../emprestimo/codeListarEmprestimo.jsp'>Listar empréstimos</a>");
                out.println("</div>");
                out.println("</div>");
            } catch (Exception e) {
                // Exibindo na tela a mensagem de que o EMPRÉSTIMO não foi alterado devido a algum erro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Empréstimo não alterado devido algum erro!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='../emprestimo/codeListarEmprestimo.jsp'>Listar empréstimos</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
