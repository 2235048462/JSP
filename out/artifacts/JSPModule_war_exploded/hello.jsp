<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/1
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%--jsp由这些页面元素组成：--%>
<%--1. 静态内容--%>
<%--html,css,javascript等内容--%>
<%--2. 指令--%>
<%--以<%@ 开始 %> 结尾，比如<%@page import="java.util.*"%>--%>
<%--3. 表达式 <%=%>--%>
<%--用于输出一段html--%>
<%--4. Scriptlet--%>
<%--在<% %>之间，可以写任何java 代码--%>
<%--5. 声明--%>
<%--在<%! %> 之间可以声明字段或者方法,但不建议这么做--%>
<%--6. 动作--%>
<%--<jsp:include page="Filename" > 在jsp页面中包含另一个页面--%>
<%--7. 注释 <%--被注释内容-- %>--%>
<%--不同于html的注释 <!-- --> ,通过jsp的注释，浏览器也看不到相应的代码，相当于在servlet中注释掉了--%>

<%--在接下来的操作中,凡是被注释的代码,均在注释前加"##"标记--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP</title>
</head>
<body>
<%--##<%--%>
<%--int num = 10;--%>
<%--int result = 1;--%>
<%--for (int i = 1; i <= num; i++) {--%>
<%--result *= i;--%>
<%--}--%>
<%--out.print ( "数字:" + num + "的阶乘是:" + result );--%>
<%--%>--%>
<br>
<%--输出当前时间,相当于Servlet使用response.getWriter().println(new Date().toLocalString())--%>
<%--##<%=new Date ().toLocaleString ()%><br>--%>

<%--<%=new Date ().toLocaleString ()%> 相当于<%out.println ( new Date ().toLocaleString());%> --%>
<%--<%=%> 内容不需要分号结尾，<%%> 内容需要以分号结尾--%>
<%--##<%--%>
<%--out.println ( new Date ().toLocaleString () );--%>
<%--%>--%>

<%--指令include:footer.jsp的内容会被插入到 hello.jsp 转译 成的hello_jsp.java中，最后只会生成一个hello_jsp.java文件--%>
<%--##<%@include file="footer.jsp" %>--%>
<%--动作include:footer.jsp的内容不会被插入到 hello.jsp 转译 成的hello_jsp.java中，而会有一个footer_jsp.java独立存在
    hello_jsp.java 会在服务端访问footer_.jsp.java,然后把返回的结果，嵌入到响应中--%>
<%--##<jsp:include page="footer.jsp"/>--%>

<%--传参:指令<%@include 会导致两个jsp合并成为同一个java文件，所以不存在传参的问题;
    动作<jsp:include />其实是对footer.jsp进行了一次独立的访问，那么就需要传参--%>
<%--##<jsp:include page="footer.jsp">--%>
<%--<jsp:param name="year" value="2018"/>--%>
<%--</jsp:include>--%>

<%--JSP的隐式对象指的是不需要显示定义，直接就可以使用的对象;
    JSP一共有9个隐式对象，分别是:request,response,out,pageContext, session,application,page,config,exception--%>
<%--request 代表请求,response 代表响应,out 代表输出
    pageContext 代表当前页面作用域,session 代表当前会话作用域,application 代表全局作用域
    page 表示当前对象,config获取web.xml中初始化的参数--%>
<%--##page:<%=page%><br>--%>
<%--this:<%=this%>--%>

</body>
</html>