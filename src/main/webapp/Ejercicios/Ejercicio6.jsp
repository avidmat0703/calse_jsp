<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosEjercicios/Ej6.css">
    <title>Tabla de Multiplicar</title>
</head>
<body>
<div class="container">
    <h1>Generar Tabla de Multiplicar</h1>
    <form method="get" action="Ejercicio6.jsp">
        <label for="numero">Introduce un número:</label>
        <input type="number" id="numero" name="numero" required>
        <button type="submit">Generar</button>
    </form>

    <%
        String numeroParam = request.getParameter("numero");
        if (numeroParam != null) {
            try {
                int numero = Integer.parseInt(numeroParam);
    %>
    <h2>Tabla de multiplicar del <%= numero %>:</h2>
    <table>
        <thead>
        <tr>
            <th>Multiplicando</th>
            <th>Multiplicador</th>
            <th>Resultado</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (int i = 1; i <= 10; i++) {
        %>
        <tr>
            <td><%= numero %></td>
            <td><%= i %></td>
            <td><%= numero * i %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
            } catch (NumberFormatException e) {
                out.println("<p class='error'>Por favor, introduce un número válido.</p>");
            }
        }
    %>
</div>
</body>
</html>