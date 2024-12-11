<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ejercicio3</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej3.css">
</head>
<body>
<h1>Calculadora de Media</h1>
<form action="../RespuestaEjercicios/respuesta3.jsp" method="post">
    <section class="inputs">
    <div>
        <label for="nota1">Nota 1:</label>
        <input type="number" name="nota1" id="nota1" step="0.01" required>
    </div>

    <div>
        <label for="nota2">Nota 2:</label>
        <input type="number" name="nota2" id="nota2" step="0.01" required>
    </div>

    <div>
        <label for="nota3">Nota 3:</label>
        <input type="number" name="nota3" id="nota3" step="0.01" required>
    </div>
    </section>

    <div class="boton">
        <input type="submit" value="Calcular Media">
    </div>
</form>
</body>
</html>