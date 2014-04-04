<%-- 
    Document   : novoDado.jsp
    Created on : Apr 2, 2014, 1:04:32 PM
    Author     : bamorim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Apólice</title>
        
        <link rel="stylesheet" href="css/bootstrap.css" />
    </head>
    <body>
        <div class="container">
            <h1>Adicionar Apólice</h1>
            <p>
                <a href="index.jsp" class="btn btn-default">Voltar</a>
            </p>
            <form class="form-inline" action="listagem.jsp" method="POST">
                <input class="form-control" name="id" type="text" placeholder="ID"/>
                <select class="form-control" name="status">
                    <option value="APROVADA">Aprovada</option>
                    <option value="NEGADA">Negada</option>
                </select>
                <button class="btn btn-primary">Enviar</button>
            </form>
        </div>
    </body>
</html>
