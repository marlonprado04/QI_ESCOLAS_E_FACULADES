<%-- 
    Document   : testeConexaoBanco
    Created on : 15 de mai. de 2023, 20:02:48
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste de conexão com banco</title>
    </head>
    <body>
        <h1>Teste de conexão com banco de dados</h1>
        
        <%
        
            try{
                Class.forName("com.mysql.jbc.Driver");
            }catch(ClassNotFoundException ex){
                out.println("Driver não encontrado.");
            }
        %>
        
        <%
            Conexao c = new Conexao();
            out.print(c.pessoasbd().toString());
        %>
    </body>
</html>
