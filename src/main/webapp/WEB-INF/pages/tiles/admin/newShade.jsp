<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="row">


    <div class="register">

        <div class="titleHeader clearfix">
            <h3>Create New Account</h3>
        </div>
        <!--end titleHeader-->

        <form:form method="post" modelAttribute="newShade" action="createService" cssClass="form-horizontal" enctype="multipart/form-data">
            <legend>&nbsp;&nbsp;&nbsp;&nbsp;1. Shade information</legend>


            <div class="control-group">
                <label class="control-label" for="userName">Name: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="name" type="text" id="userName" placeholder="Shae name"/>
                    <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputFirstName">Type: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="type" type="text" id="inputFirstName" placeholder="Shade Type"/>
                    <%--<span class="help-inline"><i class="icon-ok"></i> Avaliable input!</span>--%>
                </div>
            </div>
            <!--end control-group-->

            <div class="control-group">
                <label class="control-label" for="inputLastName">Price: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="price" type="number" id="inputLastName" placeholder="$"/>
                    <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
                </div>
            </div>
            <!--end control-group-->

            <div class="control-group">
                <label class="control-label" for="inputEMAdd">Picture: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="pictures" type="file" id="inputEMAdd"/>
                </div>
            </div>
            ​
            <div class="control-group">
                <div class="controls">

                    <br>
                    <button type="submit" class="btn btn-primary">Add new</button>
                </div>
            </div>
            <!--end control-group-->
        </form:form>
        <!--end form-->

    </div>
</div>