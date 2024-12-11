<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio2</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej2Respuesta.css">
</head>
<body>
<%
    String idioma = request.getParameter("idioma");
    String nombre = request.getParameter("nombre");

    Set<String> idiomas = Set.of("es", "en", "pt");

    String saludo;
    if (idioma == null || nombre == null || nombre.trim().isEmpty() || !idiomas.contains(idioma)) {
        saludo = "Error: Nombre o idioma no válidos.";
    }
    else {
        switch (idioma) {
            case "es":
                saludo = "¡Hola, " + nombre + "!";
                break;
            case "en":
                saludo = "Hi, " + nombre + "!";
                break;
            case "pt":
                saludo = "Olá, " + nombre + "!";
                break;
            default:
                saludo = "Idioma no soportado.";
        }
    }
%>
<h2><%= saludo %></h2>
<button><a href="../Ejercicios/Ejercicio2.jsp">Volver al formulario</a></button>
</body>
</html>