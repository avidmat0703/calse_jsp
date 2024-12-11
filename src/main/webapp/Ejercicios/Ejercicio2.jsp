<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio2</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej2.css">
</head>
<body>
<h2>Vamos a saludarte en diferentes idiomas</h2>
<p>Escribe tu nombre, elige el idioma y dale a enviar</p>
<form method="post" action="../RespuestaEjercicios/respuesta2.jsp">
    <section id="contenedor">
        <div>
            <label for="nombre">Introduzca nombre: </label>
            <input id="nombre" type="text" name="nombre" required />
        </div>

        <div>
            <label for="idioma">Selecciona idioma: </label>
            <select id="idioma" name="idioma" required>
                <option value="">-- Sin selección</option>
                <option value="es">Español</option>
                <option value="en">Inglés</option>
                <option value="pt">Portugués</option>
            </select>
        </div>
    </section>
    <button type="submit">Enviar</button>
</form>
</body>
</html>