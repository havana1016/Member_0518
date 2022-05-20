<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-18
  Time: 오후 7:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
    function upform(){
        location.href='update-form'
    }
    </script>
</head>
<body>
<h1>메인페이지</h1>

 ${sessionScope.logmem};
<button onclick="upform()">정보수정</button>
<a href="/">인덱스로 이동</a>
</body>
</html>
