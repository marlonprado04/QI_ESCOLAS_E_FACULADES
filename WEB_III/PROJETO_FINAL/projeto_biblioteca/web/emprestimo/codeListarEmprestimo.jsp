
<%@page import="modeloDTO.EmprestimoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.EmprestimoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <div class="container">
            <h1 class="form-title">Lista de Empréstimo</h1>
            <table class="table">
                <tr>
                    <th>Id do empréstimo</th>
                    <th>Id do aluno</th>
                    <th>Id do exemplar</th>
                    <th>Data do empréstimo</th>
                    <th>Data da devolução</th>
                    <th>Status</th>

                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    try {
                        EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();
                        ArrayList<EmprestimoDTO> lista = objEmprestimoDAO.ListarEmprestimo();
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getIdAluno()%></td>
                    <td><%= lista.get(num).getIdExemplar()%></td>
                    <td><%= lista.get(num).getDataEmprestimo()%></td>
                    <td><%= lista.get(num).getDataDevolucao()%></td>
                    <td><%= lista.get(num).getStatus()%></td>


                    <!-- No código abaixo estou passando as informações da lista 
                    para a outra página a partir do clique do usuário no link--> 
                    <td><a href="formAlterarEmprestimo.jsp?id=<%= lista.get(num).getId()%>
                           &id_aluno=<%= lista.get(num).getIdAluno()%>
                           &id_exemplar=<%= lista.get(num).getIdExemplar()%>
                           &data_devolucao=<%= lista.get(num).getDataDevolucao()%>
                           &data_emprestimo=<%= lista.get(num).getDataEmprestimo()%>
                           $status=<%= lista.get(num).getStatus()%>">Alterar</a></td>

                    <!-- No código abaixo estou passando as informações da lista 
                    para a outra página a partir do clique do usuário no link--> 
                    <td><a href="formExcluirEmprestimo.jsp?id=<%= lista.get(num).getId()%>
                           &id_aluno=<%= lista.get(num).getIdAluno()%>
                           &id_exemplar=<%= lista.get(num).getIdExemplar()%>
                           &data_devolucao=<%= lista.get(num).getDataDevolucao()%>
                           &data_emprestimo=<%= lista.get(num).getDataEmprestimo()%>
                           &status=<%= lista.get(num).getStatus()%>">Excluir</a></td>

                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

            <div class="button-container">
                <form action="../aluno/codeListarAluno.jsp">
                    <div class="form-button-container">
                        <button class="form-button" type="submit">Listar alunos</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>