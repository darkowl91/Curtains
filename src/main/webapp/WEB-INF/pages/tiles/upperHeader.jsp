<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="upperHeader">
    <div class="container">
        <ul class="pull-right inline">
            <sec:authorize access="isAuthenticated()">
                <%--<li><a class="invarseColor" href="<c:url value="/selfCare"/> ">My Account</a></li>--%>
                <li class="divider-vertical"></li>
                <li><a class="invarseColor" href="<c:url value="/sigOut"/>"><spring:message code="user.welcome.checkout"/></a></li>
            </sec:authorize>
            <%--<li class="divider-vertical"></li>--%>
            <%--<li><a class="invarseColor" href="#">My Wish List (5)</a></li>--%>
            <%--<li class="divider-vertical"></li>--%>
            <%--<li><a class="invarseColor" href="#">Shoping Cart</a></li>--%>
            <%--<li class="divider-vertical"></li>--%>


        </ul>
        <p>
            <sec:authorize access="isAnonymous()">
                <spring:message code="user.welcome"/><a href="<c:url value="/signIn"/>"><spring:message code="user.welcome.login"/></a> <spring:message code="user.welcome.or"/>
                <a href="<c:url value="/signUp"/>"><spring:message code="user.welcome.create.new.account"/></a>
            </sec:authorize>
        </p>
    </div>
</div>
