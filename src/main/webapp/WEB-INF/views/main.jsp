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
</head>
<body>
<h1>메인페이지</h1>
로그인 회원 정보 : ${logmem};
세션에 담은 memlogid : ${sessionScope.logmemid};
세션에 담은 id : ${sessionScope.logid};


<a href="/">인덱스로 이동</a>
</body>
</html>
