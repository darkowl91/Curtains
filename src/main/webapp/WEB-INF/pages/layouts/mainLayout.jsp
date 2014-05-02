<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title"/></title>
    <meta name="description" content="">
    <meta name="author" content="Owl">
    <!-- Mobile Specific Meta's
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" media="screen">
    <!-- jquery ui css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui-1.10.1.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/customize.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <!-- flexslider css-->
    <link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>">
    <!-- fancybox -->
    <link rel="stylesheet" href="<c:url value="/resources/js/fancybox/jquery.fancybox.css"/>">
    <c:url value="/resources/js/html5shim.js" var="hyml5shim"/>
    <c:url value="/resources/js/ie7.js" var="ie7"/>
    <!--[if lt IE 9]>
    <script src="${hyml5shim}"></script>
    <script src="${ie7}"></script>
    <![endif]-->
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="<c:url value="/resources/images/favicon.html"/>">
    <link rel="apple-touch-icon" href="<c:url value="/resources/images/apple-touch-icon.html"/>">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value="/resources/images/apple-touch-icon-72x72.html"/>">
    <link rel="apple-touch-icon" sizes="114x114"
          href="<c:url value="/resources/images/apple-touch-icon-114x114.html"/>">
    <!-- Page Specific CSS -->
    <tiles:useAttribute id="specific_css" name="page_specific_css" classname="java.util.List" ignore="true"/>
    <c:forEach var="css_url" items="${specific_css}">
        <link href="<c:url value="${css_url}"/>" rel="stylesheet" type="text/css" media="screen"/>
    </c:forEach>
</head>
<body>
<div id="mainContainer" class="clearfix">
    <header>
        <tiles:insertAttribute name="upperHeader"/>
        <tiles:insertAttribute name="middleHeader"/>
        <tiles:insertAttribute name="mainNav"/>
    </header>

    <div class="container">
        <tiles:insertAttribute name="content_row1" ignore="true"/>
        <tiles:insertAttribute name="content_row2" ignore="true"/>
        <tiles:insertAttribute name="content_row3" ignore="true"/>
    </div>

    <tiles:insertAttribute name="footer"/>
</div>

<tiles:insertAttribute name="sideBar" ignore="true"/>

<script src="<c:url value="/resources/js/jquery1.9.1.js"/>"></script>
<script src="<c:url value="/resources/js/jquery_ui1.10.1.js"/>"></script>
<!-- jQuery.Cookie -->
<script src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
<!-- bootstrap -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- flexslider -->
<script src="<c:url value="/resources/js/jquery.flexslider-min.js"/>"></script>
<!-- cycle2 -->
<script src="<c:url value="/resources/js/jquery.cycle2.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.cycle2.carousel.min.js"/>"></script>
<!-- tweets -->
<script src="<c:url value="/resources/js/jquery.tweet.js"/>"></script>
<!-- placeholder -->
<script src="<c:url value="/resources/js/jquery.placeholder.min.html"/>"></script>
<!-- fancybox -->
<script src="<c:url value="/resources/js/fancybox/jquery.fancybox.js"/>"></script>
<!-- custom function-->
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<%--notyfications--%>
<script src="<c:url value="/resources/js/noty/packaged/jquery.noty.packaged.min.js"/>"></script>
<%--validation--%>
<script src="<c:url value="/resources/js/jquery-validate.min.js"/>"></script>
<!-- Page Specific Scripts -->
<tiles:useAttribute id="specific_js" name="page_specific_js" classname="java.util.List" ignore="true"/>
<c:forEach var="js_url" items="${specific_js}">
    <script type="text/javascript" src="<c:url value="${js_url}"/>"></script>
</c:forEach>

</body>
</html>
