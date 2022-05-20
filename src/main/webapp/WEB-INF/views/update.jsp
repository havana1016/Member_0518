<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-19
  Time: 오후 6:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${sessionScope.logmem}
현재 관리번호 : ${sessionScope.logid}<br>

현재 연락처 : ${sessionScope.logmem.mnum}<br>
<form action="upnum?id=${sessionScope.logid}" method="get">
<input type="text" name="mnum" placeholder="변경할 연락처 입력">
<%--<a href="/upnum?id=${sessionScope.logid}&mnum=${mnum}">수정하기</a>--%>
<input type="submit" value="수정하기">
</form>




</body>
</html>
