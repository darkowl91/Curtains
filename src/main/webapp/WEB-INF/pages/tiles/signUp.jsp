<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<spring:message code="signUp.username" var="username" />
<spring:message code="signUp.password" var="password" />
<spring:message code="signUp.passwordConfirm" var="passwordConfirm" />
<spring:message code="signUp.firstName" var="firstName" />
<spring:message code="signUp.lastName" var="lastName" />
<spring:message code="signUp.email" var="email" />

<div class="row">


<div class="register">

    <div class="titleHeader clearfix">
        <h3>Create New Account</h3>
    </div>
    <!--end titleHeader-->

    <form:form method="post" modelAttribute="newUser" cssClass="form-horizontal">

        <legend>&nbsp;&nbsp;&nbsp;&nbsp;1. Personal Informations</legend>

        <div class="control-group">
            <label class="control-label" for="userName">Username: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="username" type="text" id="userName" placeholder="Username"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="email">Email: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="email" type="email" id="email" placeholder="example@mail.com"/>
                <%--<span class="help-inline"><i class="icon-ok"></i> Avaliable input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group">
            <label class="control-label" for="firstName">First Name: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="firstName" type="text" id="firstName" placeholder="First Name"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group">
            <label class="control-label" for="lastName">Last Name: <span class="text-error">*</span></label>

            <div class="controls">
                <form:input path="lastName" type="text" id="lastName" placeholder="Last Name"/>
                <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
            </div>
        </div>
        <!--end control-group-->

        <legend>​    2. Set Your Password​</legend>​


        <div class="control-group">
            <label class="control-label" for="password">Password: <span class="text-error">*</span></label>
            <div class="controls">
                <form:password path="password" id="password" placeholder="**********"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="passwordConfirm">Re-Type Password: <span class="text-error">*</span></label>
            <div class="controls">
                <form:password path="passwordConfirm"  id="passwordConfirm" placeholder="**********"/>
            </div>
        </div>

        ​
        <div class="control-group">
            <div class="controls">

                <br>
                <button type="submit" class="btn btn-primary">Register</button>
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