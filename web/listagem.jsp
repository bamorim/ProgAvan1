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
    
    if(request.getParameter("line_to_delete") != null){
        int lineToDelete = Integer.parseInt(request.getParameter("line_to_delete"));
        apolices.deleteAt(lineToDelete);
    }
    
    if(id != null){
        if(status_str != null) {
          status = Apolice.Status.valueOf(status_str);
        }
        apolices.add(id, status);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todas as Apolices</title>
        
        <link rel="stylesheet" href="css/bootstrap.css" />
    </head>
    <body>
        <div class="container">
            <h1>Listagem de Apolices!</h1>
            <p>
                <a href="index.jsp" class="btn btn-default">Voltar</a>
                <a href="novoDado.jsp" class="btn btn-primary">Adicionar Novo</a>
            </p>
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Status</th>
                        <th>Remover</th>
                    </tr>
                </thead>
            <% for(int i = 0; i < apolices.getAllApolices().size(); i++){
                Apolice apolice = apolices.getAllApolices().get(i);
            %>
                <tr>
                    <td><b><%= apolice.getId() %></b></td>
                    <td><%= apolice.getStatus().toString() %></td>
                    <td>
                        <form method="POST">
                            <input type="hidden" name="line_to_delete" value="<%= i %>"/>
                            <button class="btn btn-warning">X</button>
                        </form>
                    </td>
                </tr>
            <% } %>
        </div>
    </body>
</html>
