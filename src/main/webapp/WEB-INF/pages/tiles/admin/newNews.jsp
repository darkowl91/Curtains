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

        <form:form method="post" modelAttribute="news" action="createNews" cssClass="form-horizontal" enctype="multipart/form-data">
            <legend>&nbsp;&nbsp;&nbsp;&nbsp;1. Add News</legend>


            <div class="control-group">
                <label class="control-label" for="date">Date: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="date" type="date" id="date" placeholder="mm-dd-yyy"/>
                    <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="title">Title: <span
                        class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="title" type="text" id="title" placeholder="Title"/>
                    <%--<span class="help-inline"><i class="icon-ok"></i> Avaliable input!</span>--%>
                </div>
            </div>
            <!--end control-group-->

            <div class="control-group">
                <label class="control-label" for="description">Description: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="description" type="text" id="description" placeholder="Description"/>
                    <%--<span class="help-inline"><i class="icon-remove"></i> Invalid input!</span>--%>
                </div>
            </div>
            <!--end control-group-->

            <div class="control-group">
                <label class="control-label" for="content">Content: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:textarea path="content" type="text" id="content" rows="3" placeholder="Content"/>
                </div>
            </div>
            ​
            <div class="control-group">
                <label class="control-label" for="picture">Picture: <span class="text-error">*</span></label>

                <div class="controls">
                    <form:input path="picture" type="file" id="picture"/>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">

                    <br>
                    <button type="submit" class="btn btn-primary">Add News</button>
                </div>
            </div>
        </form:form>
    </div>
</div>