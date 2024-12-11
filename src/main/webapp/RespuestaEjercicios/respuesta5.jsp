<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de la Ecuación</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej5Respuesta.css">
</head>
<body>
<h1>Resultado de la Ecuación de Segundo Grado</h1>
<%
    try {
        java.math.BigDecimal a = new java.math.BigDecimal(request.getParameter("a"));
        java.math.BigDecimal b = new java.math.BigDecimal(request.getParameter("b"));
        java.math.BigDecimal c = new java.math.BigDecimal(request.getParameter("c"));

        if (a.compareTo(java.math.BigDecimal.ZERO) == 0) {
            out.println("<p style='color: red;'>El coeficiente 'a' no puede ser 0 en una ecuación de segundo grado.</p>");
        }
        else {
            java.math.BigDecimal bSquared = b.pow(2);
            java.math.BigDecimal fourAC = a.multiply(c).multiply(new java.math.BigDecimal("4"));
            java.math.BigDecimal discriminante = bSquared.subtract(fourAC);

            java.text.DecimalFormat formato = new java.text.DecimalFormat("#,##0.00");

            if (discriminante.compareTo(java.math.BigDecimal.ZERO) < 0) {
                out.println("<p>El discriminante es negativo: " + formato.format(discriminante) + "</p>");
                out.println("<p>La ecuación tiene soluciones complejas.</p>");
            }
            else {
                java.math.BigDecimal sqrtDiscriminante = new java.math.BigDecimal(Math.sqrt(discriminante.doubleValue()));
                java.math.BigDecimal twoA = a.multiply(new java.math.BigDecimal("2"));

                java.math.BigDecimal root1 = b.negate().add(sqrtDiscriminante).divide(twoA, java.math.RoundingMode.HALF_UP);
                java.math.BigDecimal root2 = b.negate().subtract(sqrtDiscriminante).divide(twoA, java.math.RoundingMode.HALF_UP);

                out.println("<p>El discriminante es: " + formato.format(discriminante) + "</p>");
                out.println("<p>Raíz 1: " + formato.format(root1) + "</p>");
                out.println("<p>Raíz 2: " + formato.format(root2) + "</p>");
            }
        }
    }
    catch (NumberFormatException e) {
        out.println("<p style='color: red;'>Por favor, introduce valores numéricos válidos.</p>");
    }
%>
<button><a href="../Ejercicios/Ejercicio5.jsp">Volver</a></button>
</body>
</html>