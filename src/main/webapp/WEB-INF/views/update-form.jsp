<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-20
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<script>
    const id=${sessionScope.logid};
</script>
</head>
<body>
${sessionScope.logmem}
현재 관리번호 : ${sessionScope.logid}<br>

현재 연락처 : ${sessionScope.logmem.mnum}<br>
<form action="upnum" method="post">
    <input name="id" value="${sessionScope.logid}" hidden>
    <input type="text" name="mnum" placeholder="변경할 연락처 입력">
    <%--<a href="/upnum?id=${sessionScope.logid}&mnum=${mnum}">수정하기</a>--%>
    <input type="submit" value="수정하기">
</form>
</body>
</html>
