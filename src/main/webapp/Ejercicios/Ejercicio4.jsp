<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Conversor de Dólares a Euros</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej4.css">
</head>
<body>
<h1>Conversor de Dólares a Euros</h1>
<form action="../RespuestaEjercicios/respuesta4.jsp" method="post">
    <div>
        <label for="dolares">Cantidad en dólares (USD):</label>
        <input type="number" name="dolares" id="dolares" step="0.01" required>
    </div>
    <input class="boton" type="submit" value="Convertir a Euros">
</form>
</body>
</html>