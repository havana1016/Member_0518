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
<h3>수정하실 정보를 입력해주세요.</h3>
<form action="update" method="get">
<p id="mid" >현재 아이디 ${upmem.mid}</p>
<input type="text" name="mid" placeholder="수정하실 아이디 입력">
    <p id="mpw" value="${upmem.mpw}"></p>
    <input type="text" name="mpw" placeholder="수정하실 비밀번호 입력">
    <p id="mname" value="${upmem.mname}"></p>
    <input type="text" name="mname" placeholder="수정하실 이름 입력">
    <p id="mage" value="${upmem.mage}"></p>
    <input type="text" name="mage" placeholder="수정하실 나이 입력">
    <p id="mnum" value="${upmem.mnum}"></p>
    <input type="text" name="mnum" placeholder="수정하실 연락처 입력">
    <input type="submit" placeholder="수정하기">



</form>


</body>
</html>
