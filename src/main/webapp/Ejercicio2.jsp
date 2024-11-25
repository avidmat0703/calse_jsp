<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        body {
            background-color: #93dcd8;
            text-align: center;
        }

        h2 {
            margin-top: 100px
        ;
        }

        #contenedor {
            margin-top: 100px;
            display: flex;
            justify-content: space-around;
        }
    </style>
</head>
<body>
    <h2>Vamos a traducir tu texto a diferentes idiomas</h2>
    <p>Escribe el texto que quieras traducir y elige el idioma</p>
    <form method="post" action="respuesta2.jsp">
        <div id="contenedor">
            <div>
                <label for="nombre">Introduzca nombre: </label>
                <input id="nombre" type="text" name="nombre"/>
            </div>

            <div>
                <label id="idioma">Selecciona idioma: </label>
                <select id="idioma" name="idioma">
                    <option value="">--Sin selección</option>
                    <option value="">Español</option>
                    <option value="">Inglés</option>
                    <option value="">Portugués</option>
                </select>
            </div>
        </div>
    </form>
</body>
</html>