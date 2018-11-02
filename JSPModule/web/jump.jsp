<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jump跳转</title>
</head>
<body>
<%--客户端跳转--%>
<%--##<%--%>
<%--response.sendRedirect ( "hello.jsp" );--%>
<%--%>--%>

<%--服务器端跳转01--%>
<%--##<%--%>
<%--request.getRequestDispatcher ( "hello.jsp" ).forward ( request, response );--%>
<%--%>--%>

<%--服务器端跳转02,效果等同于01--%>
<jsp:forward page="hello.jsp"/>
</body>
</html>
