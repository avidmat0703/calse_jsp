<%--pasoVariable2.jsp --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<form method="get" action="tratamiento/incremento.jsp">
    Introduzca un número (puede tener decimales):
    <input type="text" name="numero">
    <input type="hidden" name="incremento" value="3">
    <input type="submit" value="Enviar">
</form>
</body>
</html>