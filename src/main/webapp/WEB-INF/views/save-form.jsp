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
    <script src="\resources\js\jquery.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

    <style>

    </style>


</head>
<body>
<form class="form-control" action="save" method="post">

    <br>
    <input class="form-control" type="text" name="mid" id="mid" onblur="idc()" placeholder="아이디를 입력하세요." value="${ttt.mid}" >
    <div id="idcresult"></div>
<%--    <button onclick="javascript: form.action='/idc';">아이디 중복확인</button><br>--%>
    <input class="form-control" type="text" name="mpw" placeholder="비밀번호를 입력하세요."><br>
    <input class="form-control" type="text" name="mname" placeholder="이름을 입력하세요."><br>
    <input class="form-control" type="text" name="mage" placeholder="나이를 입력하세요."><br>
    <input class="form-control" type="text" name="mnum" placeholder="전화번호를 입력하세요."><br>
    <input class="btn btn-outline-secondary" type="submit" value="가입하기">
    <input class="btn btn-outline-secondary" type="reset" value="reset">
</form>
</body>
<script>
    function idc(){
        console.log("idc호출")
        const midv=mid.value;
        const mid=document.getElementById("mid");
        const idcresult=document.getElementById("idcresult");
        $.ajax({
            type:"post",
            url:"idchk",//요청주소
            data:{"mid": midv}, //전송하는 파라미터  data:{"키":밸류}
            dataType:"text", //리턴받을 데이터 형식
            success: function (result){
               if(result=="ok" && midv.length!=0){
                   idcresult.innerHTML="사용가능한 아이디 입니다."
                   idcresult.style.color="green"}
            // }  else if(result=="ok" && midv.length==0){
            //        idcresult.innerHTML="필수 정보입니다."
            //        idcresult.style.color="red"
            //    }
               else{
                   idcresult.innerHTML="사용중인 아이디입니다."
                   idcresult.style.color="red"
                   mid.value="";
                   mid.focus();


               }
            },
            error:function (){
                alert("오타체크")
            }
        })

    }
</script>

</html>
