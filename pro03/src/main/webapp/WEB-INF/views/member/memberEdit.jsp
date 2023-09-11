<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정하기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
    <!-- 헤더 부분 인클루드 -->
    <jsp:include page="../include/hd.jsp"></jsp:include>
</header>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 class="h1">회원 정보 글 수정</h2>
        <hr>
        <div class="container">
            <form action="${path1 }/member/edit.do" method="post">
                <table id="table1">
                    <tbody>
                    <%-- 아이디는 바꾸지 않을 거지만 정보를 request 해주기 위해 readonly로 선언--%>
                    <tr>
                        <th style="background-color:#dcdcdc">아이디</th>
                        <td>
                            <input type="text" name="id" id="id" value="${member.id }" readonly>
                        </td>
                    </tr>

                    <tr>
                        <th style="background-color:#dcdcdc">이름</th>
                        <td>
                            ${member.name}
                        </td>
                    </tr>

                    <tr>
                        <th style="background-color:#dcdcdc">비밀번호</th>
                        <td>
                            <input type="password" placeholder="기존 비밀번호" name="pw" id="pw" value="${member.pw}">
                        </td>
                    </tr>


                    <tr>
                        <th style="background-color:#dcdcdc">이메일</th>
                        <td>
                            <input type="text" id="email" name="email" placeholder="${member.email}">
                        </td>
                    </tr>

                    <tr>
                        <th style="background-color:#dcdcdc">전화번호</th>
                        <td>
                            <input type="text" id="tel" name="tel" placeholder="${member.tel}">
                        </td>
                    </tr>

                    <tr>
                        <th style="background-color:#dcdcdc">주소</th>
                        <td>

                            <input type="indata" name="addr1" id="addr1" placeholder="기본 주소 입력" class="form-control"
                                   required/><br>
                            <input type="indata" name="addr2" id="addr2" placeholder="상세 주소 입력" class="form-control"
                                   required/><br>
                            <input name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;"
                                   placeholder="우편번호" class="form-control">
                            <button type="button" id="post_btn" onclick="findAddr()" class="btn btn-primary">우편번호 검색
                            </button>
                        </td>
                    </tr>


                    <tr>
                        <th style="background-color:#dcdcdc">생년월일</th>
                        <td>
                            <input type="text" id="birth" name="birth" placeholder="${member.birth}">
                        </td>
                    </tr>


                    <tr>
                        <td colspan="2">
                            <input type="submit" class="submit success button" value="글 수정">
                            <a class="button" href="${path1 }/member/list.do">회원 목록</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>

            <script>
                function findAddr() {
                    new daum.Postcode({
                        oncomplete: function (data) {
                            console.log(data);
                            var roadAddr = data.roadAddress;
                            var jibunAddr = data.jibunAddress;
                            document.getElementById("postcode").value = data.zonecode;
                            if (roadAddr !== '') {
                                document.getElementById("address1").value = roadAddr;
                            } else if (jibunAddr !== '') {
                                document.getElementById("address1").value = jibunAddr;
                            }
                            document.getElementById("address2").focus();
                        }
                    }).open();
                }
            </script>

        </div>
    </div>
</div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</footer>
</body>
</html>