<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>

<%--设置errorPage="catch.jsp"，表示有异常产生的话，就交给catch.jsp处理--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"
         errorPage="catch.jsp" %>
<html>
<body>
<%
    int[] a = new int[10];
    a[20] = 5;
%>
</body>
</html>
