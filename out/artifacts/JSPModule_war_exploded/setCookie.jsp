<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>

<%--Cookie是一种浏览器和服务器交互数据的方式--%>
<%--Cookie是由服务器端创建，但是不会保存在服务器,而是保存你到客户端--%>
<%--创建好之后，发送给浏览器。浏览器保存在用户本地--%>
<%--下一次访问网站的时候，就会把该Cookie发送给服务器--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>setCookie</title>
</head>
<body>
<%
    Cookie cookie = new Cookie ( "name", "Gareen" );
    cookie.setMaxAge ( 60 * 24 * 60 );
    cookie.setPath ( "127.0.0.1" );
    response.addCookie ( cookie );
%>
<a href="getCookie.jsp">跳转到获取cookie的页面</a>
</body>
</html>
