<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 나중에 jsp가 헷갈릴 수 있으므로 path를 여러개 사용하는 경우 이름을 다르게 지정해준다.
    path를 지정할 때 이름을 같게 하지 않게해라 같게하면 오류 생길 수도 있음
--%>
<%-- 이미지 경로 바꾸면 오류 생기므로 일단 이렇게 두자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path0" value="/pro03_war " />



<%--푸터--%>
<footer id="ft" class="container is-fullft">
    <footer class="footer">
        <div class="content has-text-centered">
            <p>
                <strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is licensed
                <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
                is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
            </p>
        </div>
    </footer>
</footer>