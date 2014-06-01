<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row">


<div class="register">

    <div class="titleHeader clearfix">
        <h3><spring:message code="user.signUp.create"/></h3>
    </div>
    <!--end titleHeader-->

    <form:form method="post" modelAttribute="newUser" cssClass="form-horizontal">

        <legend>&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="user.signUp.info"/></legend>

        <div class="control-group">
            <label class="control-label" for="userName"><spring:message code="user.signUp.username"/>: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="username" type="text" id="userName" placeholder="Username"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="email"><spring:message code="user.signUp.email"/>: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="email" type="email" id="email" placeholder="example@mail.com"/>
                <%--<span class="help-inline"><i class="icon-ok"></i> Avaliable input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group">
            <label class="control-label" for="firstName"><spring:message code="user.signUp.first.name"/>: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="firstName" type="text" id="firstName" placeholder="First Name"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group">
            <label class="control-label" for="lastName"><spring:message code="user.signUp.last.name"/>: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="lastName" type="text" id="lastName" placeholder="Last Name"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <legend>​<spring:message code="user.signUp.password.info"/>​</legend>​


        <div class="control-group">
            <label class="control-label" for="password"><spring:message code="user.signUp.password"/>: <span class="text-error">*</span></label>
            <div class="controls">
                <form:password path="password" id="password" placeholder="**********"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="passwordConfirm"><spring:message code="user.signUp.password.confirm"/>: <span class="text-error">*</span></label>
            <div class="controls">
                <form:password path="passwordConfirm"  id="passwordConfirm" placeholder="**********"/>
            </div>
        </div>

        ​
        <div class="control-group">
            <div class="controls">

                <br>
                <button type="submit" class="btn btn-primary"><spring:message code="user.signUp.registeer"/></button>
            </div>
        </div>
        <!--end control-group-->
    </form:form>
    <!--end form-->

</div>
<!--end register-->

<!--end span9-->



<!--end span3-->

</div>