<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="/pro03_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header class="hd" id="hd">
    <<jsp:include page="../include/hd.jsp"></jsp:include>
</header>
<div class="contents" id="contents">
    <section class="page" id="page1">
        <div class="page_wrap">
            <h2 class="page_tit">회원 유형</h2>


            <p class="select_tit">가입 유형을 선택해 주세요</p>


            <form action="${path1}/member/join.do" method="post" class="frm">
                <div>
                    <ul class="join_type">
                        <li>
                            <img class="profile" src="${path1}/resources/images/join_parents.png" alt="">
                            <input type="radio" name="auth" value="1" id="parents" checked>
                            <label for="parents">학부모</label><br>
                        </li>
                        <li>
                            <img class="profile" src="${path1}/resources/images/join_teacher.png" alt="">
                            <input type="radio" name="auth" value="2" id="teacher">
                            <label for="teacher">교사</label><br>
                        </li>
                    </ul>
                </div>


                <input class="inbtn2" type="submit" value="다음 단계">
            </form>
        </div>
    </section>
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>

</div>


</body>
</html>