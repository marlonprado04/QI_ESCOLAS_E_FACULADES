
<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.EmprestimoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.EmprestimoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div>
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item">
                        <a class="nav-link" href="../aluno/codeListarAluno.jsp">Alunos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../livro/codeListarLivro.jsp">Livros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="../emprestimo/codeListarEmprestimo.jsp">Empréstimo</a>
                    </li>
                </ul>
                </ul>
            </div>
        </div>


        <div class="container">


            <div class="container">

                <h1 class="form-title">Lista de Empréstimo</h1>


                <table class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id do empréstimo</th>
                            <th scope="col">Id do aluno</th>
                            <th scope="col">Nome do aluno</th>
                            <th scope="col">Id do exemplar</th>
                            <th scope="col">Data do empréstimo</th>
                            <th scope="col">Data da devolução</th>
                            <th scope="col">Status</th>
                            <th colspan="2">Empréstimo</th>
                        </tr>
                    </thead>
                    <%
                        try {
                            EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();
                            AlunoDAO objAlunoDAO = new AlunoDAO();

                            int idAluno = Integer.parseInt(request.getParameter("id_aluno").trim());
                            ArrayList<EmprestimoDTO> lista = objEmprestimoDAO.ListarEmprestimoDoAluno(idAluno);
                            for (int num = 0; num < lista.size(); num++) {
                    %>
                    <tbody>
                        <tr>
                            <td><%= lista.get(num).getId()%></td>
                            <td><%= lista.get(num).getIdAluno()%></td>
                            <td><%= objAlunoDAO.ObterNomeDoAluno(lista.get(num).getIdAluno())%></td>
                            <td><%= lista.get(num).getIdExemplar()%></td>
                            <td><%= lista.get(num).getDataEmprestimo()%></td>
                            <td><%= lista.get(num).getDataDevolucao()%></td>
                            <td><%= lista.get(num).getStatus()%></td>


                            <!-- No código abaixo estou passando as informações da lista para a outra página a partir do clique do usuário no link--> 
                            <td><a class="btn btn-dark btn-sm" href="formAlterarEmprestimo.jsp?id=<%= lista.get(num).getId()%>
                                   &id_aluno=<%= lista.get(num).getIdAluno()%>
                                   &id_exemplar=<%= lista.get(num).getIdExemplar()%>
                                   &status=<%= lista.get(num).getStatus()%>
                                   &data_devolucao=<%= lista.get(num).getDataDevolucao()%>&data_emprestimo=<%= lista.get(num).getDataEmprestimo()%>">Alterar</a></td>


                            <!-- No código abaixo estou passando as informações da lista 
                            para a outra página a partir do clique do usuário no link--> 
                            <td><a class="btn btn-danger btn-sm" href="formExcluirEmprestimo.jsp?id=<%= lista.get(num).getId()%>
                                   &id_aluno=<%= lista.get(num).getIdAluno()%>
                                   &id_exemplar=<%= lista.get(num).getIdExemplar()%>
                                   &status=<%= lista.get(num).getStatus()%>
                                   &data_devolucao=<%= lista.get(num).getDataDevolucao()%>&data_emprestimo=<%= lista.get(num).getDataEmprestimo()%>">Excluir</a></td>

                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                out.println(e);
                            }
                        %>
                    </tbody>

                </table>
            </div>
    </body>
</html>