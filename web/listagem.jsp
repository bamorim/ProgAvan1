<%-- 
    Document   : listagem.jsp
    Created on : Apr 2, 2014, 1:04:53 PM
    Author     : bamorim
--%>

<%@page import="data.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    ApoliceStorage apolices = ApoliceStorage.getInstance();
    
    // Process adding new
    String id = request.getParameter("id");
    String status_str = request.getParameter("status");
    Apolice.Status status = Apolice.Status.NEGADA;
    if(status_str != null) {
      status = Apolice.Status.valueOf(status_str);
    }
    if(id != null){
        apolices.add(id, status);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todas as Apolices</title>
    </head>
    <body>
        <h1>Listagem de Apolices!</h1>
        <a href="index.jsp">Voltar</a>
        <a href="novoDado.jsp">Adicionar Novo</a>
        <ul>
        <% for(Apolice apolice : apolices.getAllApolices()) { %>
        <li>
            <b><%= apolice.getId() %></b>
            <span><%= apolice.getStatus().toString() %></span>
            <a href="#">X</a>
        <% } %>
    </body>
</html>
