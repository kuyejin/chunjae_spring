<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }"/>
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

div class="field">
<label class="label">Name</label>
<div class="control">
    <input class="input" type="text" placeholder="Text input">
</div>
</div>

<div class="field">
    <label class="label">Username</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input is-success" type="text" placeholder="Text input" value="bulma">
        <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
        <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
    </div>
    <p class="help is-success">This username is available</p>
</div>

<div class="field">
    <label class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input is-danger" type="email" placeholder="Email input" value="hello@">
        <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
        <span class="icon is-small is-right">
      <i class="fas fa-exclamation-triangle"></i>
    </span>
    </div>
    <p class="help is-danger">This email is invalid</p>
</div>




<div class="field">
    <div class="control">
        <label class="checkbox">
            <input type="checkbox">
            I agree to the <a href="#">terms and conditions</a>
        </label>
    </div>
</div>

<div class="field">
    <div class="control">
        <label class="radio">
            <input type="radio" name="question">
            Yes
        </label>
        <label class="radio">
            <input type="radio" name="question">
            No
        </label>
    </div>
</div>

<div class="field is-grouped">
    <div class="control">
        <button class="button is-link">Submit</button>
    </div>
    <div class="control">
        <button class="button is-link is-light">Cancel</button>
    </div>
</div>

</div>
<footer id="footer" class="footer-nav row expanded collapse">
    <!-- 푸터 부분 인클루드 -->
    <jsp:include page="../include/ft.jsp"></jsp:include>
</footer>

</body>
</html>