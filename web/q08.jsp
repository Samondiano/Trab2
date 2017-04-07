<%-- 
    Document   : q08
    Created on : 07/04/2017, 00:57:31
    Author     : Samon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    String titulo = "Digite dois números inteiros";
    boolean exibirMenu = false;
    int n1 = 0;
    int n2 = 0;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>While 02</title>
    </head>
    <%
        if(request.getParameter("n1") != null && request.getParameter("n2") != null){
            n1 = Integer.valueOf(request.getParameter("n1"));
            n2 = Integer.valueOf(request.getParameter("n2"));
            if(n1 <= 0 || n2 <= 0){
                titulo = "Entradas inválidas!Os números devem ser maiores que 0.";
            } 
            else{
                exibirMenu = true;
            }
            response.sendRedirect("while_2.jsp");
        }
            
    %>
    <body>
        <%if(!exibirMenu){%>
            <h1><%=titulo%>: </h1>
            <form action="while_2.jsp" method="post">
                <input type="text" name="n1" placeholder="Primeiro número..."/>
                <input type="text" name="n2" placeholder="Segundo número..."/>
                <input type="submit" value="Enviar"/>
            </form>
        <%}else{%>
            <form action="while_2?n1=<%=n1%>&n2=<%=n2%>" method="post">
                <input type="radio" name="operacao" value="soma" checked> Somar<br>
                <input type="radio" name="operacao" value="sub"> Subtrair<br>
                <input type="radio" name="operacao" value="div"> Dividir<br>
                <input type="submit" value="Enviar"/>
            </form>
        <%}%>
    </body>
</html>