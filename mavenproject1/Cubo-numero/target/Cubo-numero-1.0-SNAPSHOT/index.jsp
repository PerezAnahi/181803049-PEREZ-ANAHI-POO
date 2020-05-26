<%-- 
    Document   : index
    Created on : 24 may 2020, 23:08:02
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cubo de un numero</title>
    </head>
    <body>
    <center><h1>CUBO DE UN NUMERO</h1>
        <form>
                <td>Ingrese un numero</td>
                <td><input type="number" name="numero"></td>
                <tr>
                    <td> <input type ="submit" value="enviar" name="ok"/></td>
                 
                </tr>
               
        </form>
    </center>
       <%
        if (request.getParameter("numero")!= null){
            int numero, r=0;
                numero =Integer.parseInt(request.getParameter("numero"));
                
               r=numero* numero* numero;
               out.print(r);
             }
       %>
       
    </body>
</html>
