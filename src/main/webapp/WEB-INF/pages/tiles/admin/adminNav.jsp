<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mainNav">
    <div class="container">
        <div class="navbar">

            <ul class="nav">
                <li class="active"><a href="<c:url value="/"/>"><i class="icon-home"></i></a></li>

                <li><a href="<c:url value="/manageServices"/>"><spring:message code="admin.manage.shades"/>&nbsp;<i
                        class="icon-caret-down"></i></a>

                    <div>
                        <ul>
                            <li><a href="<c:url value="/manageServices"/>"> <span>-</span><spring:message
                                    code="admin.manage.shades.all"/></a></li>
                            <li><a href="<c:url value="/newService"/>"> <span>-</span><spring:message
                                    code="admin.manage.shades.new"/></a></li>
                        </ul>
                    </div>
                </li>


                <li><a href="<c:url value="/manageServiceRequestList?filterId=all"/>"><spring:message
                        code="admin.manage.shadesRequest"/>&nbsp;<i class="icon-caret-down"></i></a>

                    <div>
                        <ul>
                            <li><a href="<c:url value="/manageServiceRequestList?filterId=all"/>">
                                <span>-</span><spring:message code="admin.manage.shadesRequest.all"/></a></li>
                            <li><a href="<c:url value="/manageServiceRequestList?filterId=toApprove"/>">
                                <span>-</span><spring:message code="admin.manage.shadesRequest.new"/></a></li>
                            <li><a href="<c:url value="/manageServiceRequestList?filterId=approved"/>">
                                <span>-</span><spring:message code="admin.manage.shadesRequest.completed"/></a></li>
                        </ul>
                    </div>
                </li>


                <li><a href="<c:url value="/manageNews"/>"><spring:message code="admin.manage.news"/>&nbsp;<i
                        class="icon-caret-down"></i></a>

                    <div>
                        <ul>
                            <li><a href="<c:url value="/manageNews"/>"> <span>-</span><spring:message
                                    code="admin.manage.news.all"/></a></li>
                            <li><a href="<c:url value="/addNews"/>"> <span>-</span><spring:message
                                    code="admin.manage.news.add"/></a></li>
                        </ul>
                    </div>
                </li>

                <li><a href="<c:url value="/manageContact/1"/>"><spring:message code="admin.manage.messages"/></a></li>

            </ul>
        </div>
    </div>
</div>