<%-- 
    Document   : teste.jsp
    Created on : 11 de mai. de 2023, 15:00:13
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Pessoa"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classe Pessoa</title>
    </head>
    <body>
        <% 
            
            // Criando a referência ou objeto chamado p1
            
            Pessoa p1;
            
            // Instanciando ou inicializando o objeto chamado p1, com o construtor cheio
            
            p1 = new Pessoa("Maria","999.999.999-99");
            
            // Outra forma de criar um objeto já instanciado
            
            Pessoa p2 = new Pessoa("João", "888.888.888-88");
            
            // Criando outra instÂncia com o construtor vazio
            
            Pessoa p3 = new Pessoa();
        %>
        
        <p> Conteúdo do objeto p1: <%=p1.toString() %> </p>
        <p> Conteúdo do objeto p2: <%=p2.toString() %> </p>
        <p> Conteúdo do objeto p3: <%=p3.toString() %> </p>
        
        <!-- Outra forma de exibir o conteúdo do objeto-->
        
        <p>Valor do atributo nome do objeto p1 : <%=p1.getNome() %></p>
        <p>Valor do atributo cpf do objeto p1 : <%=p1.getCpf() %></p> 
        
    </body>
</html>
