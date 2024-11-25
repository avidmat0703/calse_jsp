<%--incrementa.jsp --%>
</html><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
El número introducido más cinco es
<%
  String incremento = request.getParameter("incremento");
  double resultado;
  resultado = Double.parseDouble(request.getParameter("numero")) + 2 * Double.parseDouble(incremento);
  out.print(resultado);
%>
</body>
</html>