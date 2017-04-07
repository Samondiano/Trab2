<%-- 
    Document   : q09
    Created on : 07/04/2017, 00:57:38
    Author     : Samon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>While 09</title>
    </head>
    <body>
        <h1>Digite 20 números inteiros: </h1>
        <form action="q09" method="post">
            <%for(int i = 0;i <= 19;i++){%>
                <input type="text" name="n<%=i%>" placeholder="<%=(i+1)%>o Número..."/>
            <%}%> 
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>