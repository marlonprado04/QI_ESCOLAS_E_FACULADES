<!DOCTYPE html>

<html>
    <head>
        <title>Formulario de Cadastro de Clientes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css&quot; rel="stylesheet">
    </head>
    <body>

        <div class="container mt-5">

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Cadastro de  Clientes</h4>

                            <div class="card-body">
                                <table class="table table-bordered table-striped">
                                    <form action="addclienteform.jsp" method="post">

                                        <tr>
                                            <td>Nome </td>
                                            <td> <input type="text" name="nome_cli" > </td>        
                                        </tr>
                                        <tr>
                                            <td>Telefone </td>
                                            <td><input type="text" name="telefone_cli"  >    </td>    
                                        </tr>
                                        <tr>
                                            <td> Email  </td>
                                            <td><input type="text" name="email_cli" >     </td>                  
                                        </tr>


                                        <tr>
                                            <td> CPF  </td>
                                            <td><input type="text" name="cpf_cli" >

                                            </td>                          
                                        </tr>

                                        <tr>
                                            <td colspan="2">  <input type="submit" value="Enviar"> </td>

                                        </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>