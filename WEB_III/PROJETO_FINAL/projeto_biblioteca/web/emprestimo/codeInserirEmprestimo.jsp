<%@page import="modeloDAO.ExemplarDAO"%>
<%@page import="modeloDTO.ExemplarDTO"%>
<%@page import="modeloDAO.EmprestimoDAO"%>
<%@page import="modeloDTO.EmprestimoDTO"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno do cadastro de empréstimo</title>

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

                // --------------------------------------------------------
                // EMPRÉSTIMO
                // Criando objeto da classe EMPRESTIMODTO para fazer a transferência de informações
                // do formulário para a classe EMPRESTIMO
                EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();

                // Passando as informações do formulário através do comando request.getparameter
                objEmprestimoDTO.setIdAluno(Integer.parseInt(request.getParameter("id_aluno").trim()));
                objEmprestimoDTO.setIdExemplar(Integer.parseInt(request.getParameter("id_exemplar").trim()));
                objEmprestimoDTO.setDataEmprestimo(request.getParameter("data_emprestimo"));
                objEmprestimoDTO.setDataDevolucao(request.getParameter("data_devolucao"));
                objEmprestimoDTO.setStatus(request.getParameter("status_emprestimo"));

                // Criando objeto da classe EMPRESTIMODAO para fazer a operação de cadastro
                // no banco de dados a partir da classe EMPRESTIMODTO
                EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();

                // Cadastrando aluno a partir da função CADASTRARALUNO dentro classe ALINODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objEmprestimoDAO.CadastrarEmprestimo(objEmprestimoDTO);

                //----------------------------------------------------------
                // EXEMPLAR
                // Criando objeto da classe ExemplarDTO para fazer a transferência de informações
                // do formulário para a classe ExemplarDTO
                ExemplarDTO objExemplarDTO = new ExemplarDTO();

                // Passando todas as informações do formulário através do comando request.getParameter
                // para alterar todos os campos apenas do exemplar com o ID informado
                objExemplarDTO.setId(Integer.parseInt(request.getParameter("id_exemplar").trim()));
                objExemplarDTO.setObsDoExemplar(request.getParameter("obs_exemplar"));
                objExemplarDTO.setStatus(request.getParameter("status_exemplar"));

                // Criando objeto da classe ExemplarDAO para fazer a operação de ALTERAÇÃO
                // no banco de dados a partir da classe ExemplarDTO
                ExemplarDAO objExemplarDAO = new ExemplarDAO();

                // Alterando o exemplar através da função alterarExemplar dentro da classe ExemplarDAO
                // utilizando os parâmetros da classe ExemplarDTO
                objExemplarDAO.AlterarExemplar(objExemplarDTO);

                // Exibindo mensagem de sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Empréstimo realizado com sucesso!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formRealizarEmprestimo.jsp'>Realizar novo empréstimo</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarEmprestimo.jsp'>Listar empréstimos</a>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            } catch (Exception e) {
                // Exibindo mensagem de erro
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Falha ao realizar o empréstimo!</p>");
                out.println("<div class='button-row'>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='formRealizarEmprestimo.jsp'>Realizar novo empréstimo</a>");
                out.println("</div>");
                out.println("<div class='button-container'>");
                out.println("<a class='form-button' href='codeListarEmprestimo.jsp'>Listar empréstimos</a>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
