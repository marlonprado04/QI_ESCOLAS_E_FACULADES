
<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.AlunoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da inserção do aluno</title>
       
    </head>
    <body>

        <% try {
                // Criando objeto da classe ALUNODTO para fazer a transferência de informações
                // do formulário para a classe aluno
                AlunoDTO objAlunoDTO = new AlunoDTO();

                // Passando as informações do formulário através do comando request.getparameter
                objAlunoDTO.setNome(request.getParameter("nome"));
                objAlunoDTO.setSobrenome(request.getParameter("sobrenome"));
                objAlunoDTO.setCpf(request.getParameter("cpf"));
                objAlunoDTO.setEmail(request.getParameter("email"));
                objAlunoDTO.setCurso(request.getParameter("curso"));
                objAlunoDTO.setTelefone(request.getParameter("telefone"));

                // Criando objeto da classe ALUNODAO para fazer a operação de cadastro
                // no banco de dados a partir da classe ALUNODTO
                AlunoDAO objAlunoDAO = new AlunoDAO();

                // Cadastrando aluno a partir da função CADASTRARALUNO dentro classe ALINODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objAlunoDAO.CadastrarAluno(objAlunoDTO);
                
                //Printando na tela a informação de que o aluno foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno cadastrado com sucesso!</p>");
                
                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarAluno.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");
                
            } catch (Exception e) {
                // Printando mensagem de aluno não cadastrado
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno não cadastrado devido a algum erro!</p>");
                
                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarAluno.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
