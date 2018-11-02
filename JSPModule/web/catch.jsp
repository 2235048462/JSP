<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>

<%--exception 对象只有当前页面的<%@page 指令设置为isErrorPage="true"的时候才可以使用;
    同时，在其他页面也需要设置 <%@page 指令 errorPage="" 来指定一个专门处理异常的页面,例如:try.jsp--%>
<%--设置 isErrorPage="true"，表示当前页面可以使用exception对象--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isErrorPage="true" %>
<html>
<body>
<%=exception%>
</body>
</html>
