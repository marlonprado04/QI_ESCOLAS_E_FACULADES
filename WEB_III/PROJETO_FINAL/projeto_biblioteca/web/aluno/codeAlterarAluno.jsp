
<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.AlunoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <title>Alteração de aluno</title>
    </head>
    <body>
        <% try {
                // Criando objeto da classe ALUNODTO para fazer a transferência de informações
                // do formulário para a classe ALUNO
                AlunoDTO objAlunoDTO = new AlunoDTO();

                // Passando TODAS informações do formulário através do comando request.getparameter
                // para ALTERAR TODOS OS CAMPOS apenas o ALUNO com o ID informado
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));
                objAlunoDTO.setNome(request.getParameter("nome"));
                objAlunoDTO.setSobrenome(request.getParameter("sobrenome"));
                objAlunoDTO.setCpf(request.getParameter("cpf"));
                objAlunoDTO.setTelefone(request.getParameter("telefone"));
                objAlunoDTO.setEmail(request.getParameter("email"));
                objAlunoDTO.setCurso(request.getParameter("curso"));

                // Criando objeto da classe ALUNODAO para fazer a operação de ALTERAÇÃO
                // no banco de dados a partir da classe ALUNODTO
                AlunoDAO objAlunoDAO = new AlunoDAO();

                // ALTERANDO ALUNO a partir da função ALTERAR dentro classe ALUNODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objAlunoDAO.AlterarAluno(objAlunoDTO);

                //Printando na tela a informação de que o aluno foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno alterado com sucesso!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário de cadastro</a>");
                out.println("</div>");
                out.println("</div>");

            } catch (Exception e) {

                AlunoDTO objAlunoDTO = new AlunoDTO();
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno não alterado devido a algum erro!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário de cadastro</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
