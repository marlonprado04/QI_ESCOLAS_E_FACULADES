<%-- 
    Document   : formConsultaPorCPF
    Created on : 24 de mai. de 2023, 19:09:19
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
        <form action="codeConsultarCpf.jsp" method="POST">
            <label>CPF</label>
            <input name="cpf" id="cpf" type="text">
            <button type="submit">Consultar</button>
        </form>
    </body>
</html>
