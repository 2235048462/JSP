<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Footer版权</title>
</head>
<body>
<%--基本格式--%>
<%--##<hr>--%>
<%--<p style="text-align: center">copyright@2018</p>--%>

<%--传参格式--%>
<hr>
<p style="text-align: center">
    copyright@<%=request.getParameter ( "year" )%>
</p>
</body>
</html>
