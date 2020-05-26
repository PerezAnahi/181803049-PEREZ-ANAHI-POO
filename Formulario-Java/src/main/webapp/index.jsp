<%-- 
    Document   : index
    Created on : 21 may 2020, 19:32:31
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulary</title>
    </head>
    <body>
        <center>  
        <br> <h1>FORMULARIO</h1> <br>
        <hr>
        
        <p> Ingresar un numero: </p>
       <form method="GET">
                <input type="number" name="final">
                <input type="submit" name="enviar">
            </form>
        </center>
            <%
                String send = request.getParameter("enviar");
                String end = request.getParameter("final");
                
                
                if (send != null && end != null && !end.isEmpty()){
                    out.println("<br>");
                 for (int i=0; i<= Integer.parseInt(end); i++){
                     out.print(i+" ; ");
                 }
                 
                } else {
                    out.println("<center><br> <p>No acepta letras ingresa un numero</p</center>");
                    
                }
               
            %>
    </body>
</html>
