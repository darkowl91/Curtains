<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<div id="mainContainer" class="clearfix">
    <header>
        <tiles:insertAttribute name="upperHeader"/>
        <tiles:insertAttribute name="middleHeader"/>
        <tiles:insertAttribute name="mainNav"/>
    </header>

    <div class="container">
        <tiles:insertAttribute name="content_row1"/>
        <tiles:insertAttribute name="content_row2"/>
        <tiles:insertAttribute name="content_row3"/>
    </div>

    <tiles:insertAttribute name="footer"/>
</div>

<tiles:insertAttribute name="sideBar"/>