<%-- 
    Document   : index
    Created on : 22 may 2020, 9:27:06
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center> <h1>El programa que debio ser</h1>
        <h2> by: Anahí</h2>
    </center>
        <%
            if (request.getParameter("numero")!= null){
                out.println("<h1> El ciclo del valor ingresado es</h1>");
                int numero =Integer.parseInt(request.getParameter("numero"));
            }
        %>
    </body>
</html>
