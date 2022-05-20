<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-18
  Time: 오후 3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
<div class="input-group m-3">
<a href="save-form" ><button class="btn btn-outline-secondary">회원가입</button></a><br>
<a href="login-form"><button class="btn btn-outline-secondary">로그인</button></a><br>
<a href="find"><button class="btn btn-outline-secondary">목록출력</button></a><br>
    <a href="/response-test"><button class="btn btn-outline-secondary">response-test</button></a><br>
    <a href="/response-test2"><button class="btn btn-outline-secondary">response-test2</button></a><br>
    <a href="/test"><button class="btn btn-outline-secondary">테스트 페이지</button></a>
</div>
로그인 회원 정보 : ${logmem};
세션에 담은 memlogid : ${sessionScope.logmemid};
세션에 담은 id : ${sessionScope.logid};


</body>
</html>
