<%-- 
    Document   : index
    Created on : 24 may 2020, 20:21:38
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones aritmeticas</title>
        
    </head>
    <body>
    <center>
        <h1> OPERACIONES ARITMETICAS</h1>
        <h2>by: Anahí</h2>
    </center>
        <%
        int numero1=0,numero2=0, suma=0, promedio=0, resta=0, multiplicacion=0;
            if (request.getParameter("ok")!= null){
                numero1= Integer.parseInt(request.getParameter("text1"));
                numero2= Integer.parseInt(request.getParameter("text2"));
                suma= numero1+numero2;
                promedio=suma/2;
                resta=numero1-numero2;
                multiplicacion= numero1* numero2;
            }
        %>
        <center>
        <form action="index.jsp" method="POST">
            <table border=0>
                <td>Ingrese el primer numero</td>
                <td><input type="text" name="text1"></td>
                <tr>
                    <td>Ingrese el segundo numero </td>
                <td><input type="text" name="text2"></td>
                </tr>
                
                <tr>
                    <td> <input type ="submit" value="enviar" name="ok"/></td>
                </tr>
                <tr>
                    <td>Suma:</td>
                     <td><input type="text" name="text4" value=<% out.print(suma);%>></td>
                </tr>
                <tr>
                    <td>Promedio:</td>
                     <td><input type="text" name="text5" value=<% out.print(promedio);%>></td>
                </tr>
                <tr>
                    <td>Resta:</td>
                    <td><input type="text" name="text6" value=<% out.print(resta);%>></td>
                </tr>
                <tr>
                    <td>Multiplicacion:</td>
                    <td><input type="text" name="text7" value=<% out.print(multiplicacion);%>></td>
                </tr>
            </table>            
            
        </form>
        </center>
    </body>
</html>
