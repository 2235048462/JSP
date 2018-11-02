<%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>

<%--为了保证EL表达式能够正常使用，需要在<%@page 标签里加上isELIgnored="false"--%>
<%--##<c:set var="name" value="${'Green'}" scope="request"/>--%>
<%--通过标签获取name:<c:out value="${name}"/><br>--%>
<%--通过EL获取name:${name}--%>

<%--EL会按照从高到低的优先级顺序获取:pageContext>request>session>application--%>
<%--##<c:set var="name" value="${'Green-pageContext'}" scope="page"/><br>--%>
<%--<c:set var="name" value="${'Green-request'}" scope="request"/>--%>
<%--<c:set var="name" value="${'Green-session'}" scope="session"/>--%>
<%--<c:set var="name" value="${Green-application}" scope="application"/>--%>
<%--4个作用域都有name,优先获取出来的是:${name}--%>

<%--EL可以很方便的访问JavaBean的属性,本module缺少Java代码--%>
<%--JavaBean的标准:--%>
<%--1. 提供无参public的构造方法(默认提供)--%>
<%--2. 每个属性，都有public的getter和setter--%>
<%--3. 如果属性是boolean,那么就对应is和setter方法--%>
<%--##<%--%>
<%--Hero hero = new Hero ();--%>
<%--hero.setName ( "盖伦" );--%>
<%--hero.setHp ( 616 );--%>
<%--hero.setDamage ( 233 );--%>
<%--request.setAttribute ( "hero", hero );--%>
<%--%>--%>
<%--英雄的名字:${hero.name}<br>--%>
<%--英雄的血量:${hero.hp}--%>

<%--EL还可以结合 JSTL的<c:forEach 使用，进一步简化代码--%>
<%--##<%--%>
<%--List <String> heroes = new ArrayList <> ();--%>
<%--heroes.add ( "塔姆" );--%>
<%--heroes.add ( "艾克" );--%>
<%--heroes.add ( "巴德" );--%>
<%--heroes.add ( "雷克塞" );--%>
<%--heroes.add ( "卡莉斯塔" );--%>
<%--request.setAttribute ( "heroes", heroes );--%>
<%--%>--%>
<%--<table width="200px" align="center" border="1px" cellspacing="0">--%>
<%--<tr>--%>
<%--<td>编号</td>--%>
<%--<td>英雄</td>--%>
<%--</tr>--%>
<%--<c:forEach items="${heroes}" var="hero" varStatus="st">--%>
<%--<tr>--%>
<%--<td>${st.count}</td>--%>
<%--<td>${hero}</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>

<%--EL表达式可以做到request.getParameter("name") 这样的形式获取浏览器传递过来的参数--%>
<%--##${param.name}--%>

<%
    request.setAttribute ( "killNumber", "10" );
%>
<%--c:if用法,运行结果:--%>
<c:if test="${killNumber>=10}">
    <p>超神</p>
</c:if>
<c:if test="${killNumber<10}">
    <p>还没超神...</p>
</c:if><br>
<%--c:choose 用法,运行结果:--%>
<c:choose>
    <c:when test="${killNumber>=10}">
        <p>超神</p>
    </c:when>
    <c:otherwise>
        <p>还没超神</p>
    </c:otherwise>
</c:choose><br>
<%--EL表达式eq的用法,运行结果:--%>
${killNumber ge 10? "超神":"还没超神"}
</body>
</html>
