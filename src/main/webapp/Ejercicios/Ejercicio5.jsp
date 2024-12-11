<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resolver Ecuación de Segundo Grado</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej5.css">
</head>
<body>
<h1>Resolución de Ecuación de Segundo Grado</h1>
<p>Forma general: <strong>ax² + bx + c = 0</strong></p>
<form action="../RespuestaEjercicios/respuesta5.jsp" method="post">
    <label for="a">Coeficiente a:</label>
    <input type="number" name="a" id="a" step="0.01" required>
    <label for="b">Coeficiente b:</label>
    <input type="number" name="b" id="b" step="0.01" required>
    <label for="c">Coeficiente c:</label>
    <input type="number" name="c" id="c" step="0.01" required>
    <input type="submit" value="Resolver">
</form>
</body>
</html>