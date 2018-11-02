<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%--JSP有4个作用域，分别是:--%>
<%--pageContext 当前页面--%>
<%--requestContext 一次请求--%>
<%--sessionContext 当前会话--%>
<%--applicationContext 全局，所有用户共享--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%--通过pageContext.setAttribute(key,value)的数据,只能在当前页面访问,在其他页面就不能访问--%>
<%--##<%--%>
<%--pageContext.setAttribute ( "name", "Green" );--%>
<%--%>--%>
<%--<%=pageContext.getAttribute ( "name" )%>--%>

<%--requestContext 表示一次请求.随着本次请求结束,其中的数据也就被回收--%>
<%--##<%--%>
<%--request.setAttribute ( "name", "Green" );--%>
<%--%>--%>
<%--<%=request.getAttribute ( "name" )%>--%>

<%--requestContext如果发生服务端跳转,从setContext.jsp跳转到getContext.jsp,仍是一次请求,--%>
<%--所以在getContext.jsp中，可以取到在requestContext中设置的值.这是一种页面间传递数据的方式--%>
<%--##<%--%>
<%--request.setAttribute ( "name", "Green" );--%>
<%--%>--%>
<%--<jsp:forward page="getContext.jsp"/>--%>

<%--requestContext客户端跳转无法传递数据--%>
<%--##<%--%>
<%--request.setAttribute ( "name", "Green" );--%>
<%--response.sendRedirect ( "getContext.jsp" );--%>
<%--%>--%>

<%--sessionContext可以在页面间传递数据;
    不同用户对应的session是不一样的，所以session无法在不同的用户之间共享数据--%>
<%--##<%--%>
<%--session.setAttribute ( "name", "Green" );--%>
<%--response.sendRedirect ( "getContext.jsp" );--%>
<%--%>--%>

<%--applicationContext指的是全局，所有用户共享同一个数据;
    application对象是ServletContext接口的实例,可以通过 request.getServletContext()来获取;
    application映射的就是web应用本身--%>
<%
    application.setAttribute ( "name", "Green" );
    System.out.println ( application == request.getServletContext () );
    response.sendRedirect ( "getContext.jsp" );
%>
</body>
</html>
