<%@ page import="java.util.Set" %>
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

        a {
            text-decoration: none;
        }

        a:visited {
            color: black;
        }
    </style>
</head>
<body>
<%
    String idioma = request.getParameter("idioma");
    String nombre = request.getParameter("nombre");

    Set<String> idiomas = Set.of("es", "pt", "en");

    String saludo;
    if (idioma == null || nombre == null || nombre.trim().isEmpty() || !idiomas.contains(idioma)) {
        saludo = "Error: Nombre o idioma no válidos.";
    }
    else {
        switch (idioma) {
            case "pt":
                saludo = "Olá, " + nombre + "!";
                break;
            case "en":
                saludo = "Hi, " + nombre + "!";
                break;
            case "es":
                saludo = "¡Hola, " + nombre + "!";
                break;
            default:
                saludo = "Idioma no soportado.";
        }
    }
%>
<h2><%= saludo %></h2>
<button><a href="../Ejercicio2.jsp">Volver al formulario</a></button>
</body>
</html>