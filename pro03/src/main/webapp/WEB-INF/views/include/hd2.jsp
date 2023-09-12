<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 나중에 jsp가 헷갈릴 수 있으므로 path를 여러개 사용하는 경우 이름을 다르게 지정해준다.
    path를 지정할 때 이름을 같게 하지 않게해라 같게하면 오류 생길 수도 있음
--%>
<%-- 이미지 경로 바꾸면 오류 생기므로 일단 이렇게 두자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path1" value="/pro03_war" />

<%--메타포--%>
<%--기타 설정--%>
<%--폰트--%>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-compatible" content="IE=edge"> <!-- 익스프로어 일 경우 엣지를 사용하라고 안내-->
<meta http-equiv="author" content="TeenTalk"> <!-- 문서의 제작사 -->
<meta http-equiv="publisher" content="TeenTalk"> <!-- 문서의 저자 정의 -->
<meta http-equiv="copyright" content="copyright@teentalk.co.kr"> <!-- 저작권 명시 -->
<title></title>

<!-- 검색엔진 최적화(SEO) -->
<meta name="subject" content="TeenTalk"> <!-- 페이지 주제 지정 http-equiv 로 지정해도 상관 무 -->
<meta name="keywords" content="TeenTalk"> <!-- 검색 단어 지정 -->
<!-- 검색 결과에 표시되는 문자 지정-->
<meta name="description" content="TeenTalk은 IT 교육에 대한 자료 제공과 교육을 실시하는 회사입니다.">
<meta name="robots" content="index, follow">

<!-- 오픈 그래프 -->
<!-- 페이지를 공유할 때 미리보기로 보여주는 코드 -->
<meta property="og:type" content="website">
<meta property="og:title" content="TeenTalk">
<meta property="og:description" content="앞선 생각으로 더 큰 미래의 교육을 준비하는 기업">
<%--<meta property="og:image" content=<%=path0%>"/img/img1.jpg">--%>
<%--<meta property="og:url" content=<%=path0 %>"/img/img1.jpg">--%>


<!-- 파비콘 -->
<link rel="shortcut icon" href="./img/logo.ico">

<!-- 애플 계열 모바일 -->
<!-- <link rel="apple-touch-icon-precomposed" href="../img/logo_64.png"> -->
<!-- IE 계열 브라우저 -->
<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" content="./img/logo_48.png">
<!-- 파이어폭스, 오페라, 또는 구형 크롬/사파리 -->
<link rel="icon" href="./img/logo_16.png" sizes="16x16">
<link rel="icon" href="./img/logo_32.png" sizes="32x32">
<link rel="icon" href="./img/logo_48.png" sizes="48x48">
<link rel="icon" href="./img/logo_64.png" sizes="64x64">

<%-- bulma --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
<link rel="stylesheet" href="${path1}/resources/css/bulma.css">
<link rel="stylesheet" href="${path1}/resources/css/normalize.css">

<!-- 제이쿼리 -->
<script src="${path1}/resources/js/jquery-1.10.0.js"></script>
<script src="${path1}/resources/js/jquery-3.7.1.js"></script>

<!-- 부트스트랩 -->
<%--
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
--%>

<!-- 불법 복제 방지, 필수 -->
<script>
    // document.oncontextmenu = function () {return false;}
    // document.ondragstart = function () {return false;} // 드래그 방지
    // document.onselectstart = function () {return false;}
    // document.onselectstart = function () {return false;}
    // document.onkeydown = function () {return false;} // 키보드 입력 방지
</script>

<%--헤더--%>
<header id="hd" class="container is-fullhd">
<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="https://bulma.io">
            <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item">
                Home
            </a>

            <a class="navbar-item">
                Documentation
            </a>

            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                    More
                </a>

                <div class="navbar-dropdown">
                    <a href="${path1 }/board/list.do" class="navbar-item">
                        Board
                    </a>
                    <a href="${path1 }/sample2/list.do" class="navbar-item">
                        Sample
                    </a>
                    <a class="navbar-item">
                        Contact
                    </a>
                    <hr class="navbar-divider">
                    <a class="navbar-item">
                        Report an issue
                    </a>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <%-- 로그인 했을 때 --%>

                    <c:if test="${!(sid.equals('admin')) && !empty sid}">
                        <p>${sid } 님</p>
                        <a href="${path1 }/member/mypage.do" class="button is-primary">
                            <strong>mypage</strong>
                        </a>
                        <a href="${path1 }/member/logout.do" class="button is-light">
                            logout
                        </a>
                    </c:if>

                    <%--관리자 일때--%>
                        <p>${sid } 님</p>
                    <c:if test="${sid.equals('admin') && !empty sid}">
                        <a href="${path1 }/member/adminpage.do" class="button is-primary">
                            <strong>관리자페이지</strong>
                        </a>
                        <a href="${path1 }/member/list.do" class="button is-primary">
                            <strong>memberList</strong>
                        </a>
                        <a href="${path1 }/member/logout.do" class="button is-light">
                            logout
                        </a>
                    </c:if>


                    <%-- 로그인 안했을 때--%>
                    <c:if test="${empty sid}">
                        <a href="${path1 }/member/term.do" class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a href="${path1 }/member/login.do" class="button is-light">
                            Log in
                        </a>
                    </c:if>


                   <%-- <a href="${path1 }/member/list.do" class="button is-primary">
                        <strong>memberList</strong>
                    </a>--%>

                </div>
            </div>
        </div>
    </div>
</nav>
</header>