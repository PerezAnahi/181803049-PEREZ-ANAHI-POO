<%-- 
    Document   : index
    Created on : 22 may 2020, 9:47:06
    Author     : Anahi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String num = request.getParameter("numero");
    String estado = request.getParameter("enviar");

    String titularForm = "Ingresar un numero";
    String errorForm = "";
    boolean mostrarForm = true;

    int lim = 0;

    if (num != null && !estado.equals("regresar")) {
        if (!num.isEmpty()) {

            lim = Integer.parseInt(num);

            if (lim >= 0) {

                titularForm = "Volver al actualizador";
                mostrarForm = false;

            } else {
                errorForm = "Ingresar un numero positivo";
            }

        } else {
            errorForm = "ingresar un numero ";
        }
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <center> <title>Formulary</title> </center>
    </head>
    <body>
        <p>
    <center>   
        <h1>FORMULARIO</h1>
            <b>Actualizador</b><br> 
            <%out.println(titularForm);%>
            </center>
        </p>
        <center>
        <form method="GET">
            <input type="<%if (mostrarForm) {%>number<%} else {%>hidden<%}%>" name="numero">
            <input type="submit" name="enviar" value="<%if (mostrarForm) {%>Calcular<%} else {%>Regresar<%}%>">
        </form>
        </center>
            <center> <p><%if (!mostrarForm) {int i = 0;while (i <= lim) {out.println(i);i++;}}%></p> </center>
        <p><%out.println(errorForm);%></p>

    </body>
</html>

