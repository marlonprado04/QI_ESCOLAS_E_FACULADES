<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.meupacote.ClientesDao" %>
<%@page import="com.meupacote.Clientes,java.util.*" %>  
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda 2023 - Lista Clientes</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css&quot; rel="stylesheet">

    </head>    

    <body>
        <div class="container mt-5">

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Lista de Clientes:</h4>

                            <div class="card-body">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th> Id:</th> <th> Nome:</th> <th> Telefone</th> <th> Email:</th>  <th> CPF:</th>  <th> Editar</th>  <th> Excluir</th>            
                                        </tr>
                                    </thead>    

                                    <%        
                                        //Connection conn  = ClientesDao.getConnection();
                                     // instanciando um novo arraylist
                                     List<Clientes> list = Clientes.getAllClientes();
                                     request.setAttribute("list",list);
                                     //minhalist = list
             
                                    for(int i = 0; i<list.size();i++){
                                    %>
                                    <tr> <td><%=list.get(i).getId_cli()%> </td>
                                        <td><%=list.get(i).getNome_cli()%> </td>
                                        <td><%=list.get(i).getTelefone_cli()%></td>
                                        <td><%=list.get(i).getEmail_cli()%></td>
                                        <td><%=list.get(i).getCpf_cli()%> </td>                      

                                        <td><a href="editarFormulario.jsp?id=<%=list.get(i).getId_cli()%>">editar</a></td>
                                        <td><a href="deleteusuario.jsp?id=<%=list.get(i).getId_cli()%>">excluir</a></td>
                                    </tr>
                                    <%          
                                             }
 
                                    %>                                          

                                    <br>      
                                </table>
                                <a href="clienteform.html">Add User</a>
                            </body>
                            </html>