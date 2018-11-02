<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ChenBo
  Date: 2018/11/2
  Time: 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>For循环</title>
</head>
<body>
<%
    List <String> words = new ArrayList <> ();
    words.add ( "today" );
    words.add ( "is" );
    words.add ( "a" );
    words.add ( "great" );
    words.add ( "day" );
%>
<table width="200px" align="center" border="1px" cellspacing="0">
    <%
        for (String word : words) {
    %>
    <tr>
        <td align="center">
            <%=word%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
