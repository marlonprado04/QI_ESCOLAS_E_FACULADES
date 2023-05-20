<%-- 
    Document   : formInserirAluno
    Created on : 19 de mai. de 2023, 20:52:23
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <style>
            body {
                background-color: #f2f2f2;
                font-family: Arial, sans-serif;
            }

            .form-container {
                background-color: #ffffff;
                border-radius: 5px;
                box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
                max-width: 400px;
                margin: 0 auto;
                padding: 20px;
            }

            .form-title {
                text-align: center;
                margin-bottom: 20px;
                color: #333333;
            }

            .form-row {
                display: flex;
                flex-direction: row;
                margin-bottom: 10px;
                align-items: center;
            }

            .form-label {
                width: 100px;
                text-align: right;
                padding-right: 10px;
                color: #666666;
            }

            .form-input {
                flex: 1;
                max-width: 200px;
                padding: 5px;
                border: 1px solid #cccccc;
                border-radius: 3px;
            }

            .form-button {
                margin-left: auto;
                padding: 10px 20px;
                background-color: #337ab7;
                color: #ffffff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .form-button:hover {
                background-color: #23527c;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de aluno</title>
    </head>
    <body>

        <h1 class="form-title">Cadastrar novo aluno</h1>

        <form action="codeInserirLivro.jsp" method="POST">

            <div class="form-container">
                <div class="form-row">
                    <label class="form-label" for="nome">Nome:</label>
                    <input class="form-input" type="text" id="nome" name="nome" placeholder="Ex: Joaquim" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="sobrenome">Sobrenome:</label>
                    <input class="form-input" type="text" id="sobrenome" name="sobrenome" placeholder="Ex: da Silva" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="cpf">CPF:</label>
                    <input class="form-input" type="text" id="cpf" name="cpf" placeholder="Ex: 123.456.789-01" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="email">Email:</label>
                    <input class="form-input" type="text" id="email" name="email" placeholder="Ex: joaquimdasilva@gmail.com" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="telefone">Telefone:</label>
                    <input class="form-input" type="text" id="telefone" name="telefone" placeholder="Ex: (51)12345-6789" required>
                </div>

                <div class="form-row">
                    <label class="form-label" for="curso">Curso:</label>
                    <input class="form-input" type="text" id="curso" name="curso" placeholder="Ex: Ciência da computação" required>
                </div>

                <div class="form-row">
                    <button class="form-button" type="submit">Enviar</button>
                </div>
            </div>

        </form>

    </body>
</html>
