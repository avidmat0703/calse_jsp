<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Generador de Calendario</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej7.css">
</head>
<body>
<h1 style="text-align: center;">Calendario</h1>
<form method="get" action="Ejercicio7.jsp" style="text-align: center;">
    <label for="mes">Mes (1-12):</label>
    <input type="number" id="mes" name="mes" min="1" max="12" required>
    <label for="anio">Anio:</label>
    <input type="number" id="anio" name="anio" min="1900" required>
    <button type="submit">Generar</button>
</form>

<%
    String mesParam = request.getParameter("mes");
    String anioParam = request.getParameter("anio");

    if (mesParam != null && anioParam != null) {
        try {
            int mes = Integer.parseInt(mesParam) - 1;
            int anio = Integer.parseInt(anioParam);

            Calendar calendario = new GregorianCalendar(anio, mes, 1);

            String[] nombresMeses = {
                    "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                    "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
            };
            String nombreMes = nombresMeses[mes];

            int primerDiaSemana = calendario.get(Calendar.DAY_OF_WEEK);

            int diasEnMes = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);

%>
<h2 style="text-align: center;"><%= nombreMes %> <%= anio %></h2>
<table>
    <tr>
        <th>Dom</th>
        <th>Lun</th>
        <th>Mar</th>
        <th>Mie</th>
        <th>Jue</th>
        <th>Vie</th>
        <th>Sab</th>
    </tr>
    <tr>
            <%
                        for (int i = 1; i < primerDiaSemana; i++) {
                            out.print("<td></td>");
                        }

                        int dia = 1;
                        for (int i = primerDiaSemana; i <= 7; i++) {
                            out.print("<td>" + dia + "</td>");
                            dia++;
                        }
                        out.print("</tr>");

                        while (dia <= diasEnMes) {
                            out.print("<tr>");
                            for (int i = 1; i <= 7; i++) {
                                if (dia <= diasEnMes) {
                                    out.print("<td>" + dia + "</td>");
                                    dia++;
                                } else {
                                    out.print("<td></td>");
                                }
                            }
                            out.print("</tr>");
                        }
                    %>
</table>
<%
        } catch (NumberFormatException e) {
            out.print("<p style='color: red; text-align: center;'>Error: Por favor ingrese valores válidos para mes y año.</p>");
        }
    }
%>
</body>
</html>