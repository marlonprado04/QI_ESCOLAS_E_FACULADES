<%-- 
    Document   : media_alunos
    Created on : 17 de abr. de 2023, 19:29:38
    Author     : QI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% 
            
            double n1 = 6.4;
            double n2 = 7.5;
            double n3 = 8.6;
            double n4 = 5.7;
         
            double media;
           
            //Calculando média de notas do aluno
            media = (n1 + n2 + n3 + n4)/4;
            
            out.println("A média das notas: " + n1 + " + " + n2 + " + " + n3 + " + " + n4 + " é de " + media);
            
        %> 
    </body>
</html>
