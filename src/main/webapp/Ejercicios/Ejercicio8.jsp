<!DOCTYPE html>
<html>
<head>
    <title>Configurador de Interior del Vehiculo</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej8.css">
</head>
<body>
<h1>Configurador de Interior del Vehiculo</h1>
<form action="../RespuestaEjercicios/respuesta8.jsp" method="post">
    <label for="colorTapiceria">Color de la tapiceria:</label><br>
    <select name="colorTapiceria" id="colorTapiceria" required>
        <option value="blanco">Blanco</option>
        <option value="negro">Negro</option>
        <option value="berenjena">Berenjena</option>
    </select><br><br>

    <label for="materialMolduras">Material de las molduras:</label><br>
    <select name="materialMolduras" id="materialMolduras" required>
        <option value="madera">Madera</option>
        <option value="carbono">Carbono</option>
    </select><br><br>

    <button type="submit">Configurar</button>
</form>
</body>
</html>