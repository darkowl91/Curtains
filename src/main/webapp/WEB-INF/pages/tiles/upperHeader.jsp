<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="upperHeader">
    <div class="container">
        <ul class="pull-right inline">
            <sec:authorize access="isAuthenticated()">
                <li><a class="invarseColor" href="<c:url value="/selfCare"/> ">My Account</a></li>
                <li class="divider-vertical"></li>
                <li><a class="invarseColor" href="<c:url value="/sigOut"/>">Checkout</a></li>
            </sec:authorize>
            <%--<li class="divider-vertical"></li>--%>
            <%--<li><a class="invarseColor" href="#">My Wish List (5)</a></li>--%>
            <%--<li class="divider-vertical"></li>--%>
            <%--<li><a class="invarseColor" href="#">Shoping Cart</a></li>--%>
            <%--<li class="divider-vertical"></li>--%>


        </ul>
        <p>
            <sec:authorize access="isAnonymous()">
                Welcome to ShopFine, <a href="<c:url value="/signIn"/>">Login</a> or <a href="<c:url value="/signUp"/>">Create
                new account</a>
            </sec:authorize>
        </p>
    </div>
</div>
