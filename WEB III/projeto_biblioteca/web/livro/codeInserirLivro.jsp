
<%@page import="modeloDAO.LivroDAO"%>
<%@page import="modeloDTO.LivroDTO"%>
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
                // Criando objeto da classe LIVRODTO para fazer a transferência de informações
                // do formulário para a classe aluno
                LivroDTO objLivroDTO = new LivroDTO();

                // Passando as informações do formulário através do comando request.getparameter
                objLivroDTO.setTitulo(request.getParameter("titulo"));
                objLivroDTO.setEditora(request.getParameter("editora"));
                objLivroDTO.setAno_publicacao(request.getParameter("ano_publicacao"));
                objLivroDTO.setGenero(request.getParameter("genero"));
                objLivroDTO.setIsbn(request.getParameter("isbn"));

                // Criando objeto da classe LIVRODAO para fazer a operação de cadastro
                // no banco de dados a partir da classe LIVRODTO
                LivroDAO objLivroDAO = new LivroDAO();

                
                // Cadastrando LIVRO a partir da função CADASTRARALUNO dentro classe LIVRO
                // isso tudo pegando os parâmetros da classe LIVRODTO
                objLivroDAO.CadastrarLivro(objLivroDTO);
                
                //Printando na tela a informação de que o LIVRO foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro cadastrado com sucesso!</p>");
                
                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirLivro.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarLivro.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");
                
            } catch (Exception e) {
                // Printando mensagem de aluno não cadastrado
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Livro não cadastrado devido a algum erro!</p>");
                
                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirLivro.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarLivro.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
