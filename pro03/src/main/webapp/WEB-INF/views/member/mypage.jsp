<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${title }</title>
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
	      <h2 class="h1">${title }</h2>
	      <hr>
	      <div class="container">
		      <table id="table1">
		      	<tbody>
		
		      		<tr>
		      			<th style="background-color:#dcdcdc">ID </th>
		      			<td>${member.id }</td>
		      		</tr>	
		      		<tr>
		      			<th style="background-color:#dcdcdc">PW</th>
		      			<td>${member.pw }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">이름</th>
		      			<td><p>${member.name }</p></td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">이메일</th>
		      			<td>${member.email }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">전화번호</th>
		      			<td>${member.tel }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">주소</th>
		      			<td>${member.addr1 } ${member.addr2 }</td>
		      		</tr>

					<tr>
						<th style="background-color:#dcdcdc">우편번호</th>
						<td>${member.postcode } </td>
					</tr>

					<tr>
						<th style="background-color:#dcdcdc">가입날짜</th>
						<td>${member.regdate } </td>
					</tr>

					<tr>
						<th style="background-color:#dcdcdc">생년월일</th>
						<td>${member.birth } </td>
					</tr>

		      	</tbody>
		      </table>
				<div class="button-group">
				  <a class="button" href="${path1 }/member/list.do">회원 목록</a>
				  <a class="button" href="${path1 }/member/delete.do?seq=${member.id}">회원 삭제</a>
				  <a class="button" href="${path1 }/member/edit.do?seq=${member.id}">회원 수정</a>
				</div>
	      </div>
	    </div>
	</div>
    <footer id="footer" class="footer-nav row expanded collapse">
    	<!-- 푸터 부분 인클루드 -->
    	<jsp:include page="../include/ft.jsp"></jsp:include>
    </footer>
</body>
</html>