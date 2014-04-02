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
    </head>
    <body>
        <h1>Adicionar Apólice</h1>
        <a href="index.jsp">Voltar</a>
        <form action="listagem.jsp" method="POST">
            <input name="id" type="text" placeholder="ID"/>
            <select name="status">
                <option value="APROVADA">Aprovada</option>
                <option value="NEGADA">Negada</option>
            </select>
        </form>
    </body>
</html>
