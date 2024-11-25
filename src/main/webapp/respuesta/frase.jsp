<%--
  Created by IntelliJ IDEA.
  User: usuario
  Date: 15/11/24
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Paso de cadena</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
Me gusta mucho comer
<% out.println(request.getParameter("cadena")); %>
</body>
</html>