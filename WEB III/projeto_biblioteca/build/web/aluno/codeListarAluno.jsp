<%@page import="modeloDTO.AlunoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Lista de Alunos</h1>
            <table class="table">
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Curso</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    try {
                        AlunoDAO objAlunoDAO = new AlunoDAO();
                        ArrayList<AlunoDTO> lista = objAlunoDAO.ListarAluno();
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getNome()%></td>
                    <td><%= lista.get(num).getSobrenome()%></td>
                    <td><%= lista.get(num).getCpf()%></td>
                    <td><%= lista.get(num).getTelefone()%></td>
                    <td><%= lista.get(num).getEmail()%></td>
                    <td><%= lista.get(num).getCurso()%></td>

                    <!-- No código abaixo estou passando as informações da lista 
                    para a outra página a partir do clique do usuário no link--> 
                    <td><a href="formAlterarAluno.jsp?id=<%= lista.get(num).getId()%>
                           &nome=<%= lista.get(num).getNome()%>
                           &sobrenome=<%= lista.get(num).getSobrenome()%>
                           &cpf=<%=lista.get(num).getCpf()%>
                           &telefone=<%= lista.get(num).getTelefone()%>
                           &email=<%= lista.get(num).getEmail()%>
                           &curso=<%= lista.get(num).getCurso()%>">Alterar</a></td>
                           
                    <!-- No código abaixo estou passando as informações da lista 
                    para a outra página a partir do clique do usuário no link--> 
                    <td><a href="formExcluirAluno.jsp?id=<%= lista.get(num).getId()%>
                           &nome=<%= lista.get(num).getNome()%>
                           &sobrenome=<%= lista.get(num).getSobrenome()%>
                           &cpf=<%=lista.get(num).getCpf()%>
                           &telefone=<%= lista.get(num).getTelefone()%>
                           &email=<%= lista.get(num).getEmail()%>
                           &curso=<%= lista.get(num).getCurso()%>">Excluir</a></td>

                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

            <div class="button-container">
                <form action="formInserirAluno.jsp">
                    <button class="button" type="submit">Inserir novo aluno</button>
                </form>
            </div>
        </div>
    </body>
</html>