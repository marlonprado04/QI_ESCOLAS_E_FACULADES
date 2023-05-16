<%-- 
    Document   : teste_aula8
    Created on : 24 de abr. de 2023, 19:08:30
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
        
        <% 
            
            //Recebendo valor do formulário HTML e passando para uma variável
            String valor1 = request.getParameter("valor1");
            String valor2 = request.getParameter("valor2");
            
            //Convertendo variáveis string para int
            int val1 = Integer.parseInt(valor1);  
            int val2 = Integer.parseInt(valor2);
            
            // Calculando a soma das variáveis
            int soma = val1 + val1;
            
            // Printando na tela
            out.println("O valor da soma " + soma);
            
        %>
        
        <br><br>
        
        <% 
            // Calculando média
            int media = (val1 + val2) / 2;
            
           
       
            //Calculando média e aprovação
            if(media > 70){
                out.println("Média do aluno: " + media + " -> aluno APROVADO!");
            }else{
                out.println("Média do aluno: " + media + " -> aluno REPROVADO!");
            }
        %>
        
        
    </body>
</html>
