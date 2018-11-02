<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>

<%--Session指的是从用户打开浏览器访问一个网站开始，无论在这个网站中访问了多少页面，点击了多少链接，
    都属于同一个会话,直到该用户关闭浏览器为止--%>
<%--储物间相当于服务器;单个的储物柜格子相当于Session;储物柜格子的钥匙相当于Cookie--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>setSession</title>
</head>
<body>
<%
    session.setAttribute ( "name", "teemo" );
%>
<a href="getSession.jsp">跳转到获取session的页面</a>
</body>
</html>
