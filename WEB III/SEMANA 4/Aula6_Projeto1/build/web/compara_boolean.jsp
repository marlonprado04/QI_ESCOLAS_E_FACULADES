<%-- 
    Document   : index
    Created on : 17 de abr. de 2023, 18:56:08
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
            //Criando variáveis
            boolean a,b,r;
            a=true;
            b=false;
            r = a && a;
        %>
        
        
        <h3> 
            <% 
            //Printando valores das variáveis para poder comparar se a lógica está certa
            out.println("Os valores são: " + "A=" + a + ", B=" + b + " e R=" + r); 
        
            %> 
        </h3>
        
        
        <p> Valor de R para A && A: <%=r %></p>
        <% r = a && b; %>
        
        <p> Valor de R para A && B: <%=r %></p>
        <% r = a || a; %>
        
        <p> Valor de R para A || A: <%=r %></p>
        <% r = a || b; %>
        
        <p> Valor de R para A || B: <%=r %></p>
 
        
    </body>
</html>
