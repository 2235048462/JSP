<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>getCookie</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies ();
    if (null != cookies) {
        for (int i = 0; i < cookies.length - 1; i++) {
            out.print ( cookies[i].getName () + ":" + cookies[i].getValue () + "<br>" );
        }
    }
%>
</body>
</html>
