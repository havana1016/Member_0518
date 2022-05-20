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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="\resources\js\jquery.js"></script>
    <title>Title</title>
</head>
<body>
<h1>전체회원 정보</h1>
<table class="table table-bordered m-3">
    <tr>
        <th>관리번호</th>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>연락처</th>
        <th>조회</th>
        <th>정보수정</th>
        <th>삭제</th>
        <th>ajax조회</th>

    </tr>

<c:forEach var="tdto" items="${findlist}">
            <tr>
            <td>${tdto.id}</td>
            <td>${tdto.mid}</td>
            <td>${tdto.mpw}</td>
            <td>${tdto.mname}</td>
            <td>${tdto.mage}</td>
            <td>${tdto.mnum}</td>
            <td><a href="/detail?id=${tdto.id}">조회</a></td>
            <td><a href="/detail-up?id=${tdto.id}">정보수정</a></td>
                <td><a href="/detail-d?id=${tdto.id}">삭제하기</a></td>
            <td><button class="btn btn-outline-secondary" onclick="see(${tdto.id})">상세정보</button></td>
        </tr>
<%--    ${tdto}--%>
<%--    <tr>--%>
<%--    <td><a href="/detail?id=${tdto.id}">조회</a></td>--%>
<%--        <td><a href="/detail-d?id=${tdto.id}">삭제하기</a></td>--%>
<%--        <td><a href="/detail-up?id=${tdto.id}">정보수정</a></td>--%>
<%--        <td><button onclick="see(${tdto.id})">상세정보</button></td>--%>
<%--    </tr>--%>
</c:forEach>
</table>
<span id="see"></span>


</body>
<script>
    function see(logid){
        console.log("ajax start")
        const see=document.getElementById("see");
        $.ajax({
            type:"get",
            url:"see",//요청주소
            data:{"id":logid}, //전송하는 파라미터  data:{"키":밸류}
            dataType:"json", //리턴받을 데이터 형식
            success: function (re){
                if(re!=null){
                    let table="<table class=table table-bordered m-3><tr>"
                        table+="<th>관리번호</th>"
                    table+="<th>아이디</th>"
                    table+="<th>비밀번호</th>"
                    table+="<th>이름</th>"
                    table+="<th>나이</th>"
                    table+="<th>연락처</th></tr><tr><td>"
                    table+=re.id
                    table+="</td><td>";
                    table+=re.mid
                    table+="</td><td>";
                    table+=re.mpw
                    table+="</td><td>"
                    table+=re.mname
                    table+="</td><td>"
                    table+=re.mage
                    table+="</td><td>"
                    table+=re.mnum
                    table+="</td></tr></table>"

                    see.innerHTML=table;
                    // see.innerHTML+="+result.mid;
                    // see.innerHTML+=" ],[ 비밀번호 : "+result.mpw;
                    // see.innerHTML+=" ],[ 이름 : "+result.mname;
                    // see.innerHTML+=" ],[ 나이 : "+result.mage;
                    // see.innerHTML+=" ],[ 연락처 : "+result.mnum+" ]";
                }
                else{
                    see.innerHTML="쓀패"


                }
            },
            error:function (){
                alert("오타체크")
            }
        })

    }
</script>
</html>
