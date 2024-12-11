<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado de la Máquina de Helados</title>
    <link rel="stylesheet" href="../EstilosEjercicios/Ej10.css">
</head>
<body>
<h1>Resultado de la Maquina de Helados</h1>

<%
    int chocolate = Integer.parseInt(request.getParameter("chocolate"));
    int fresa = Integer.parseInt(request.getParameter("fresa"));
    int vainilla = Integer.parseInt(request.getParameter("vainilla"));
    int sumaTotal = chocolate + fresa + vainilla;

    if (sumaTotal > 100) {
%>
<p class="mensaje">La suma de los porcentajes debe ser menor o igual que 100. Por favor, introduzca de nuevo los porcentajes.</p>
<a href="../Ejercicios/Ejercicio10.jsp">Volver</a>
<%
}
    else {
    int alturaChocolate = (int) Math.round((chocolate / 100.0) * 400);
    int alturaFresa = (int) Math.round((fresa / 100.0) * 400);
    int alturaVainilla = (int) Math.round((vainilla / 100.0) * 400);
    int alturaHueco = 400 - alturaChocolate - alturaFresa - alturaVainilla;
%>

<div class="tarrina">
    <%
        if (chocolate > 0) {
    %>
    <div class="sabor chocolate" style="height: <%= alturaChocolate %>px;">
        Chocolate (<%= chocolate %>%)
    </div>
    <%
        }
        if (fresa > 0) {
    %>
    <div class="sabor fresa" style="height: <%= alturaFresa %>px;">
        Fresa (<%= fresa %>%)
    </div>
    <%
        }
        if (vainilla > 0) {
    %>
    <div class="sabor vainilla" style="height: <%= alturaVainilla %>px;">
        Vainilla (<%= vainilla %>%)
    </div>
    <%
        }
        if (alturaHueco > 0) {
    %>
    <div class="sabor" style="height: <%= alturaHueco %>px; background-color: #ccc; color: #000;">
        Sin sabor (<%= (100 - sumaTotal) %>%)
    </div>
    <%
        }
    %>
</div>

<p>Porcentajes introducidos:</p>
<ul>
    <% if (chocolate > 0) { %><li>Chocolate: <%= chocolate %>%</li><% } %>
    <% if (fresa > 0) { %><li>Fresa: <%= fresa %>%</li><% } %>
    <% if (vainilla > 0) { %><li>Vainilla: <%= vainilla %>%</li><% } %>
</ul>

<a href="../Ejercicios/Ejercicio10.jsp">Configurar otra tarrina</a>
<%
    }
%>
</body>
</html>