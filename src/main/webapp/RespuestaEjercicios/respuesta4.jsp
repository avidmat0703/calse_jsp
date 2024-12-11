<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de la Conversión</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej4Respuesta.css">
</head>
<body>
<h1>Resultado de la Conversión</h1>
<%
    double tasaConversion = 0.95;

    try {
        double dolares = Double.parseDouble(request.getParameter("dolares"));

        double euros = dolares * tasaConversion;

        out.println("<p>Cantidad en dólares: " + String.format("%.2f", dolares) + "$</p>");
        out.println("<p>Tasa de conversión: 1 USD = " + String.format("%.2f", tasaConversion) + " EUR</p>");
        out.println("<p><strong>Cantidad en euros: " + String.format("%.2f", euros) + "€</strong></p>");
    }
    catch (NumberFormatException e) {
        out.println("<p style='color: red;'>Por favor, introduce un valor numérico válido.</p>");
    }
%>
<button><a href="../Ejercicios/Ejercicio4.jsp">Volver</a></button>
</body>
</html>