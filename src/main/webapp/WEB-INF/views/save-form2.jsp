<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-18
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
    function idc(){

    }
    </script>


</head>
<body>
<form action="save" method="post">
    <br>
    <input type="text" name="mid" id="gid" placeholder="아이디를 입력하세요." value="${ttt.mid}"><br>
    <button onclick="javascript: form.action='/idc';">아이디 중복확인</button>
    <br>
    이미 존재하는 아이디입니다.
    <br>
    <input type="text" name="mpw" placeholder="비밀번호를 입력하세요."><br>
    <input type="text" name="mname" placeholder="이름을 입력하세요."><br>
    <input type="text" name="mage" placeholder="나이를 입력하세요."><br>
    <input type="text" name="mnum" placeholder="전화번호를 입력하세요."><br>
    <input type="submit" placeholder="가입하기">
</form>
</body>
</html>
