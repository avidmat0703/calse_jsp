<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saludo Multilingüe</title>
    <style>
        body {
            background-color: #93dcd8;
            text-align: center;
            justify-content: center;
            justify-items: center;
        }

        h2 {
            margin-top: 100px;
        }

        #contenedor {
            margin-top: 100px;
            display: flex;
            justify-content: space-around;
        }

        button {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<h2>Vamos a saludarte en diferentes idiomas</h2>
<p>Escribe tu nombre, elige el idioma y dale a enviar</p>
<form method="post" action="respuesta/respuesta2.jsp">
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