<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tablero de Ajedrez</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej9.css">
</head>
<body>
<h1>Tablero de Ajedrez</h1>

<%
    int filas = 8;
    int columnas = 8;

    Random random = new Random();
    int alfilFila, alfilColumna, caballoFila, caballoColumna;

    do {
        alfilFila = random.nextInt(filas);
        alfilColumna = random.nextInt(columnas);
        caballoFila = random.nextInt(filas);
        caballoColumna = random.nextInt(columnas);
    } while (alfilFila == caballoFila && alfilColumna == caballoColumna); // Evitar que estén en la misma posición
%>

<table border="1">
    <tr>
        <td></td>
        <%
            for (int c = 0; c < columnas; c++) {
        %>
        <td class="label"><%= (char) ('A' + c) %></td>
        <%
            }
        %>
    </tr>

    <%
        for (int i = 0; i < filas; i++) {
    %>
    <tr>
        <td class="label"><%= i + 1 %></td>
        <%
            for (int j = 0; j < columnas; j++) {
                String cellClass = (i + j) % 2 == 0 ? "white" : "black";
        %>
        <td class="<%= cellClass %>">
            <%
                if (i == alfilFila && j == alfilColumna) {
            %>
            <img src="../Imagenes/alfil.jpg" alt="Alfil">
            <%
            } else if (i == caballoFila && j == caballoColumna) {
            %>
            <img src="../Imagenes/caballo.jpg" alt="Caballo">
            <%
                }
            %>
        </td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>