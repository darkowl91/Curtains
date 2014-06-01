<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row">

    <div class="span4">
        <div id="aboutUs">
            <div class="titleHeader clearfix">
                <h3><spring:message code="user.aboutUs"/></h3>

                <div class="pagers">
                    <div class="btn-toolbar">
                        <button class="btn btn-mini" onclick="window.location.href='<c:url value="/viewContacts"/>'"><spring:message code="user.aboutUs.more"/></button>
                    </div>
                </div>
            </div>

            <p>
                <spring:message code="user.aboutUs.info"/>
            </p>
        </div>
    </div>
</div>