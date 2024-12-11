<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ejercicio3</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej3Respuesta.css">
</head>
<body>
<h1>Resultado de la Media</h1>
<%
    try {
        double nota1 = Double.parseDouble(request.getParameter("nota1"));
        double nota2 = Double.parseDouble(request.getParameter("nota2"));
        double nota3 = Double.parseDouble(request.getParameter("nota3"));

        double media = (nota1 + nota2 + nota3) / 3;

        out.println("<p>Nota 1: " + nota1 + "</p>");
        out.println("<p>Nota 2: " + nota2 + "</p>");
        out.println("<p>Nota 3: " + nota3 + "</p>");
        out.println("<p><strong>Media: " + String.format("%.2f", media) + "</strong></p>");
    }
    catch (NumberFormatException e) {
        out.println("<p style='color: red;'>Por favor, introduce valores numéricos válidos.</p>");
    }
%>
<button><a href="../Ejercicios/Ejercicio3.jsp">Volver</a></button>
</body>
</html>