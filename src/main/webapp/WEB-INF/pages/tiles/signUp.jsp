<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<spring:message code="carWash.signUp.username" var="username" />
<spring:message code="carWash.signUp.password" var="password" />
<spring:message code="carWash.signUp.passwordConfirm" var="passwordConfirm" />
<spring:message code="carWash.signUp.firstName" var="firstName" />
<spring:message code="carWash.signUp.lastName" var="lastName" />
<spring:message code="carWash.signUp.email" var="email" />

<div class="row">


<div class="register">

    <div class="titleHeader clearfix">
        <h3>Create New Account</h3>
    </div>
    <!--end titleHeader-->

    <form:form method="post" modelAttribute="newUser" cssClass="form-horizontal">

        <legend>&nbsp;&nbsp;&nbsp;&nbsp;1. Personal Informations</legend>

        <div class="control-group error">
            <label class="control-label" for="userName">Last Name: <span
                    class="text-error">*</span></label>

            <div class="controls">
                <input type="text" id="userName" placeholder="Doe">
                <span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>
            </div>
        </div>

        <div class="control-group success">
            <label class="control-label" for="inputFirstName">First Name: <span
                    class="text-error">*</span></label>

            <div class="controls">
                <input type="text" id="inputFirstName" placeholder="John">
                <span class="help-inline"><i class="icon-ok"></i> Avaliable input!</span>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group error">
            <label class="control-label" for="inputLastName">Last Name: <span
                    class="text-error">*</span></label>

            <div class="controls">
                <input type="text" id="inputLastName" placeholder="Doe">
                <span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>
            </div>
        </div>
        <!--end control-group-->

        <div class="control-group">
            <label class="control-label" for="inputEMAdd">E-Mail Address: <span
                    class="text-error">*</span></label>

            <div class="controls">
                <input type="text" id="inputEMAdd" placeholder="example@example.com">
            </div>
        </div>
        <!--end control-group-->

        <legend>​    2. Set Your Password​</legend>​


        <div class="control-group">
            <label class="control-label" for="inputPass">Password: <span class="text-error">*</span></label>
            <div class="controls">
                <input type="password" id="inputPass" placeholder="**********">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="inputConPass">Re-Type Password: <span class="text-error">*</span></label>
            <div class="controls">
                <input type="password" id="inputConPass" placeholder="**********">
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