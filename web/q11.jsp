<%-- 
    Document   : q11
    Created on : 07/04/2017, 00:57:57
    Author     : Samon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>      
        <% if(null == null){ %>
            <h1>Questão 11</h1>
            <form action="q11" method="POST">
                Infome um valor:
                <input type="text" name="n1"> <br/>
                 Informe outro valor: 
                <input type="text" name="n2"> <br/>
                <input type="submit" value="Enviar"/>
             </form>
        <%} else {%>
            <h1> Números inválidos</h1>
            <h3> Por favor, informe valores onde o primeiro valor seja menor </h3>
            <form action="q11" method="POST">
                Infome um valor:
                <input type="text" name="n1"> <br/>
                 Informe outro valor: 
                <input type="text" name="n2"> <br/>
                <input type="submit" value="Enviar"/>
             </form>
        <% } %>
        
    </body>
</html>