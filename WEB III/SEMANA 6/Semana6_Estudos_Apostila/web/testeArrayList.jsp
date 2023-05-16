<%-- 
    Document   : testeArrayList
    Created on : 11 de mai. de 2023, 15:21:18
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import ="modelo.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arraylist na classe Vetor</title>
    </head>
    <body>
       
        <%
            
            Vetor.lista.add(new Pessoa("Maria", "88888"));
            out.print(Vetor.lista.toString());
            
        %>
    </body>
</html>
