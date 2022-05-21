<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-18
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="\resources\js\jquery.js"></script>
    <title>Title</title>
</head>
<body>
<h1>로그인 페이지</h1>
<form action="login" method="post">
    <input type="text" name="mid" id="mid" placeholder="아이디를 입력하세요" autofocus><br>
    <input type="text" name="mpw" id="mpw"  placeholder="비밀번호를 입력하세요"><br>
    <span id="log-result"></span>
    <input type="submit" placeholder="로그인하기">
</form>
<button onclick="logc()">ajax 로그인 테스트</button>

</body>
<script>
    function logc(){
        console.log("logc 호출")
        let midv=document.getElementById("mid").value;
        let mpwv=document.getElementById("mpw").value;
        let result=document.getElementById("log-result")

        $.ajax({
            url:"logc",
            type:"post",
            data:{mid:midv,mpw:mpwv},
            dataType:"json",
            success: function (e){
                alert("리턴 성공")

                location.href="/main"
            },
            error: function (e){
              alert("아이디또는 비밀번호를 확인하세요")
               location.href="/login-form"

            }


        })
    }
</script>
</html>
