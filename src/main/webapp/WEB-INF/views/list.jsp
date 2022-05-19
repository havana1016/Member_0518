<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-18
  Time: 오후 7:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>전체회원 정보</h1>
<c:forEach var="tdto" items="${findlist}">
    ${tdto}
    <a href="/detail?id=${tdto.id}">조회</a>
    <a href="/detail-d?id=${tdto.id}">삭제하기</a>
    <a href="/detail-up?id=${tdto.id}">정보수정</a>
    <br><br>
</c:forEach>



</body>
</html>
