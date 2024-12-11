<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Resultado de Configuracion</title>
  <link rel="stylesheet" href="../EstilosEjercicios/Ej8Respuesta.css">
</head>
<body>
<h1>Resultado de la Configuracion</h1>

<%
  String colorTapiceria = request.getParameter("colorTapiceria");
  String materialMolduras = request.getParameter("materialMolduras");

  String colorFondo = "";
  switch (colorTapiceria) {
    case "blanco":
      colorFondo = "white";
      break;
    case "negro":
      colorFondo = "black";
      break;
    case "berenjena":
      colorFondo = "purple";
      break;
  }

  String imagenMoldura = "../Imagenes/" + materialMolduras + ".jpg";
%>

<h2>Tapicería</h2>
<div class="tapiceria" style="background-color: <%= colorFondo %>;">
  <p style="color: <%= colorTapiceria.equals("negro") ? "white" : "black" %>; text-align: center;">
    <%= colorTapiceria.substring(0, 1).toUpperCase() + colorTapiceria.substring(1) %>
  </p>
</div>

<h2>Molduras</h2>

<div>
  <img class="moldura" src="<%= imagenMoldura %>" alt="<%= materialMolduras %>">
</div>

<br>

<a href="../Ejercicios/Ejercicio8.jsp">Volver</a>
</body>
</html>