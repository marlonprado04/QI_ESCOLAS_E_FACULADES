<%-- 
    Document   : inserirLivro
    Created on : 19 de mai. de 2023, 20:53:00
    Author     : marlo
--%>

<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.AlunoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retorno da inserção do aluno</title>
        
        <style>
            body {
                background-color: #f2f2f2;
                font-family: Arial, sans-serif;
                text-align: center;
                padding-top: 50px;
            }
            
            .message-container {
                background-color: #ffffff;
                border-radius: 5px;
                box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
                max-width: 400px;
                margin: 0 auto;
                padding: 20px;
            }
            
            .message-text {
                margin-bottom: 20px;
                color: #333333;
                font-size: 18px;
            }
            
            .button-container {
                display: flex;
                justify-content: center;
            }
            
            .button {
                padding: 10px 20px;
                background-color: #337ab7;
                color: #ffffff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                font-size: 16px;
                text-decoration: none;
            }
            
            .button:hover {
                background-color: #23527c;
            }
        </style>
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

                // Cadastrando livro a partir da função CADASTRARALUNO dentro classe ALINODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objAlunoDAO.CadastrarAluno(objAlunoDTO);
                
                //Printando na tela a informação de que o aluno foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno cadastrado com sucesso!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");
                
            } catch (Exception e) {
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno não cadastrado devido a algum erro!</p>");
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
