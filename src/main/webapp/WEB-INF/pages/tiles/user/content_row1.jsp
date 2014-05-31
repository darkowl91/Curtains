<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row">

    <div class="span8">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="<c:url value="/resources/img/001.jpg"/>" slt="slide1">
                </li>
                <li>
                    <img src="<c:url value="/resources/img/002.jpg"/>" slt="slide2">
                </li>
                <li>
                    <img src="<c:url value="/resources/img/003.jpg"/>" slt="slide3">
                </li>
            </ul>
        </div>
    </div>


    <div class="span4">

        <div id="homeSpecial">
            <div class="titleHeader clearfix">
                <h3>Special</h3>

                <div class="pagers">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <button class="btn btn-mini vNext"><i class="icon-caret-down"></i></button>
                            <button class="btn btn-mini vPrev"><i class="icon-caret-up"></i></button>
                        </div>
                        <button class="btn btn-mini">View All</button>
                    </div>
                </div>
            </div>
            <!--end titleHeader-->


            <ul class="vProductItems cycle-slideshow vertical clearfix"
                data-cycle-fx="carousel"
                data-cycle-timeout=0
                data-cycle-slides="> li"
                data-cycle-next=".vPrev"
                data-cycle-prev=".vNext"
                data-cycle-carousel-visible="2"
                data-cycle-carousel-vertical="true"
                    >
                <li class="span4 clearfix">
                    <div class="thumbImage">
                        <a href="#"><img src="<c:url value="/resources/img/92x92.jpg"/>" alt=""></a>
                    </div>
                    <div class="thumbSetting">
                        <div class="thumbTitle">
                            <a href="#" class="invarseColor">
                                Foliomania the title here
                            </a>
                        </div>
                        <div class="thumbPrice">
                            <span>$150.00</span>
                        </div>
                        <ul class="rating">
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                        </ul>
                    </div>
                </li>
                <li class="span4 clearfix">
                    <div class="thumbImage">
                        <a href="#"><img src="<c:url value="/resources/img/92x92.jpg"/>" alt=""></a>
                    </div>
                    <div class="thumbSetting">
                        <div class="thumbTitle">
                            <a href="#" class="invarseColor">
                                Foliomania the designer portfolio
                            </a>
                        </div>
                        <div class="thumbPrice">
                            <span>$150.00</span>
                        </div>
                        <ul class="rating">
                            <li><i class="star-on"></i></li>
                            <li><i class="star-on"></i></li>
                            <li><i class="star-on"></i></li>
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                        </ul>
                    </div>
                </li>
                <li class="span4 clearfix">
                    <div class="thumbImage">
                        <a href="#"><img src="<c:url value="/resources/img/92x92.jpg"/>" alt=""></a>
                    </div>
                    <div class="thumbSetting">
                        <div class="thumbTitle">
                            <a href="#" class="invarseColor">
                                Foliomania the designer portfolio
                            </a>
                        </div>
                        <div class="thumbPrice">
                            <span>$150.00</span>
                        </div>
                        <ul class="rating">
                            <li><i class="star-on"></i></li>
                            <li><i class="star-on"></i></li>
                            <li><i class="star-on"></i></li>
                            <li><i class="star-off"></i></li>
                            <li><i class="star-off"></i></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>

    </div>

</div>