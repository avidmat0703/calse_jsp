<!DOCTYPE html>
<html>
<head>
    <title>Maquina de Helados</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej10.css">
</head>
<body>
<h1>Maquina de Helados</h1>
<p>Introduce los porcentajes de los sabores. Los porcentajes deben sumar menos o igual al 100%.</p>

<form action="../RespuestaEjercicios/respuesta10.jsp" method="post">
    <div class="form-row">
        <div>
            <img src="../Imagenes/chocolate.jpg" alt="Chocolate">
            <label for="chocolate">Chocolate</label>
            <input type="number" id="chocolate" name="chocolate" min="0" max="100" required>
        </div>
        <div>
            <img src="../Imagenes/fresa.jpg" alt="Fresa">
            <label for="fresa">Fresa</label>
            <input type="number" id="fresa" name="fresa" min="0" max="100" required>
        </div>
        <div>
            <img src="../Imagenes/vainilla.jpg" alt="Vainilla">
            <label for="vainilla">Vainilla</label>
            <input type="number" id="vainilla" name="vainilla" min="0" max="100" required>
        </div>
    </div>

    <button type="submit">Generar Tarrina</button>
</form>
</body>
</html>