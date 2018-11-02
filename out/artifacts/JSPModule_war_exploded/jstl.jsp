<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%--prefix="c" 表示后续的标签使用都会以<c: 开头--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<body>
<%--##<c:set var="name" value="${'Green'}" scope="request"/> &lt;%&ndash;相当于<%request.setAttribute("name","gareen")%>&ndash;%&gt;--%>
<%--通过设置的标签获取name:<c:out value="${name}"/><br> &lt;%&ndash;相当于 <%=request.getAttribute("name")%>&ndash;%&gt;--%>
<%--<c:remove var="name" scope="request"/><br> &lt;%&ndash;相当于<%request.removeAttribute("name")%>&ndash;%&gt;--%>
<%--通过设置的标签获取name:<c:out value="${name}"/><br>--%>

<%--JSTL通过<c:if test=""> 进行条件判断,但是JSTL没有<c:else，所以常用的办法是在<c:if的条件里取反;
    配合if使用的还有通过empty进行为空判断,empty可以判断对象是否为null,字符串长度是否为0，集合长度是否为0--%>
<%--##<c:set var="hp" value="${10}" scope="request"/>--%>
<%--<c:if test="${hp<5}">--%>
<%--<p>这个英雄要挂了...</p>--%>
<%--</c:if>--%>
<%--<c:if test="${!(hp<5)}">--%>
<%--<p>这个英雄觉得自己还可以再抢救抢救</p>--%>
<%--</c:if>--%>
<%--<%--%>
<%--pageContext.setAttribute ( "weapon", null );--%>
<%--pageContext.setAttribute ( "lastwords", "" );--%>
<%--pageContext.setAttribute ( "items", new ArrayList () );--%>
<%--%>--%>
<%--<c:if test="${empty weapon}">--%>
<%--<p>没有装备武器</p>--%>
<%--</c:if>--%>
<%--<c:if test="${empty lastwords}">--%>
<%--<p>挂了,无遗言...</p>--%>
<%--</c:if>--%>
<%--<c:if test="${empty items}">--%>
<%--<p>物品栏为空...</p>--%>
<%--</c:if>--%>

<%--虽然JSTL没有提供else标签，但是提供了一个else功能的标签--%>
<%--##<c:set var="hp" value="${3}" scope="request"/>--%>
<%--<c:choose>--%>
<%--<c:when test="${hp<5}">--%>
<%--<p>这个英雄要挂了...</p>--%>
<%--</c:when>--%>
<%--<c:otherwise>--%>
<%--<p>这个英雄觉得自己还可以抢救抢救...</p>--%>
<%--</c:otherwise>--%>
<%--</c:choose>--%>

<%--##<%--%>
<%--List <String> heroes = new ArrayList <> ();--%>
<%--heroes.add ( "塔姆" );--%>
<%--heroes.add ( "艾克" );--%>
<%--heroes.add ( "巴德" );--%>
<%--heroes.add ( "雷克塞" );--%>
<%--heroes.add ( "卡莉斯塔" );--%>
<%--request.setAttribute ( "heroes", heroes );--%>
<%--%>--%>
<%--&lt;%&ndash;使用jsp中的for循环来遍历List&ndash;%&gt;--%>
<%--<table width="200px" align="center" border="1px" cellspacing="0">--%>
<%--<tr>--%>
<%--<td>编号</td>--%>
<%--<td>英雄</td>--%>
<%--</tr>--%>
<%--<%--%>
<%--int i = 0;--%>
<%--for (String hero : heroes) {--%>
<%--i++;--%>
<%--%>--%>
<%--<tr>--%>
<%--<td><%=i%>--%>
<%--</td>--%>
<%--<td><%=hero%>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<%}%>--%>
<%--</table>--%>
<%--<br>--%>
<%--&lt;%&ndash;使用JSTL中的c:forEach循环遍历List&ndash;%&gt;--%>
<%--<table width="200px" align="center" border="1px" cellspacing="0">--%>
<%--<tr>--%>
<%--<td>编号</td>--%>
<%--<td>英雄</td>--%>
<%--</tr>--%>
<%--&lt;%&ndash;items="${heros}" 表示遍历的集合&ndash;%&gt;--%>
<%--&lt;%&ndash;var="hero" 表示把每一个集合中的元素放在hero上&ndash;%&gt;--%>
<%--&lt;%&ndash;varStatus="st" 表示遍历的状态&ndash;%&gt;--%>
<%--<c:forEach items="${heroes}" var="hero" varStatus="st">--%>
<%--<tr>--%>
<%--<td><c:out value="${st.count}"/></td>--%>
<%--<td><c:out value="${hero}"/></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>

<%--<c:forTokens专门用于字符串拆分，并且可以指定多个分隔符--%>
<%--##<c:set var="heroes" value="塔姆,艾克;巴德|雷克塞!卡莉斯塔"/>--%>
<%--<c:forTokens items="${heroes}" delims=",;|!" var="hero">--%>
<%--<c:out value="${hero}"/><br>--%>
<%--</c:forTokens>--%>

<%--fmt 标签常用来进行格式化,<fmt:formatNumber 表示格式化数字;
    minFractionDigits 小数点至少要有的位数,maxFractionDigits 小数点最多能有的位数--%>
<%--##<c:set var="money" value="888.8"/>--%>
<%--<c:set var="PI" value="3.1415926"/>--%>
<%--最小两个小数点:--%>
<%--<fmt:formatNumber type="number" value="${money}" minFractionDigits="2"/><br>--%>
<%--最多两位小数点:--%>
<%--<fmt:formatNumber type="number" value="${PI}" maxFractionDigits="2"/>--%>

<%--<fmt:formatDate 表示格式化日期--%>
<%--yyyy 表示年份--%>
<%--MM 表示月份--%>
<%--dd 表示日期--%>
<%--E 表示星期几--%>
<%--a 表示是上午还是下午--%>
<%--HH 表示小时--%>
<%--mm 表示分钟--%>
<%--ss 表示秒--%>
<%--S 表示毫秒--%>
<%--z 表示时区--%>
<%
    Date now = new Date ();
    pageContext.setAttribute ( "now", now );
%>
完整日期:<fmt:formatDate value="${now}" pattern="G yyyy年MM月dd日 E"/><br>
完整时间:<fmt:formatDate value="${now}" pattern="a HH:mm:ss.S z"/><br>
常见格式:<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
</body>
</html>
