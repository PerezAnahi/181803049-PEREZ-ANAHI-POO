<%-- 
    Document   : index
    Created on : 25 may 2020, 14:08:53
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>numero mayor de dos numeros</title>
    </head>
    <body>
    <center>
        <h1>Mayor de dos numeros</h1>
        <h2>By: Anahi</h2>
     
        
    </center>
     <form action="index.jsp" method="POST">
            <table border=0>
               <td>Ingrese el primer numero</td>
                <td><input type="number" name="numero1"></td>
                <td>Ingrese el segundo numero </td>
                <td><input type="number" name="numero2"></td>
                <tr>
                    <td> <input type ="submit" value="enviar" name="ok"/></td>
                </tr>
            </table>            
            
        </form>
    <%
      
        if (request.getParameter("numero1, numero2")!= null){
            
                int numero1 =Integer.parseInt(request.getParameter("numero1 "));
                int numero2 =Integer.parseInt(request.getParameter("numero2 "));
                 if(numero1 > numero2){
                 out.print(numero1);
            }    
        
             }
        else{
            int numero2 =Integer.parseInt(request.getParameter("numero2 "));
            out.print(numero2);
        }
    %>
    </body>
</html>
