<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
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
        <h2 class="h1">${title}</h2>
        <hr>
        <div class="container">
            <table>
                <thead>
                <tr>
                    <th width="80">No</th>
                    <th>ID</th>
                    <th width="120">Name</th>
                    <th width="100">regDate</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${memberList }" var="member" varStatus="status">
                    <tr>
                        <td>${status.count }</td>

                        <td><a href="${path1 }/member/detail.do?id=${member.id }" title="${member.email}">${member.id }</a></td>

                        <td><a href="${path1 }/member/detail.do?id=${member.id }" title="${member.tel}">${member.name }</a></td>

                        <td>
                            <fmt:parseDate value="${member.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                            <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <%-- <c:if test='${sid eq "admin"}'>  --%>
            <div class="button-group">
                <a class="button" href="${path1 }/member/insert.do">회원 직권 추가</a>
            </div>
            <%-- </c:if> --%>
        </div>

    </div>
</div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</footer>

</body>
</html>