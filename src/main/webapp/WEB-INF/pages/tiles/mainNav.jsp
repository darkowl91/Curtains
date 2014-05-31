<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mainNav">
    <div class="container">
        <div class="navbar">

            <ul class="nav">
                <li class="active"><a href="<c:url value="/"/>"><i class="icon-home"></i></a></li>

                <li><a href="<c:url value="/aboutUs"/>">About &nbsp;</a></li>

                <%--<sec:authorize access="isAuthenticated()">--%>
                <li><a href="<c:url value="/viewServiceList"/>">Shade &nbsp;</a></li>
                <%--</sec:authorize>--%>

                <li><a href="<c:url value="/viewContacts"/>">Contact us &nbsp;</a></li>

                <sec:authorize access="isAuthenticated()">
                <li><a href="<c:url value="/selfCare"/>">SelfCare</a></li>
                </sec:authorize>

                <%--<li><a href="#">FootWear</a></li>--%>
                <%--<li><a href="#">Accessories &nbsp;</a></li>--%>
                <%--<li><a href="#">OutLet</a></li>--%>

                <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li><a href="<c:url value="/manageServiceRequestList?filterId=all"/>">Administration</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</div>