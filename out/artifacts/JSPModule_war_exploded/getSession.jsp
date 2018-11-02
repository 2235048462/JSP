<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>getSession</title>
</head>
<body>
<%
    String name = (String) session.getAttribute ( "name" );
%>
session中的name:<%=name%>
</body>
</html>
