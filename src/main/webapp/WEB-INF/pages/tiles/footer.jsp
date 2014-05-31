<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<footer>
    <div class="footerOuter">
        <div class="container">
            <div class="row-fluid">

                <div class="span6">
                    <div class="titleHeader clearfix">
                        <h3>Usefull Links</h3>
                    </div>


                    <div class="usefullLinks">
                        <div class="row-fluid">
                            <div class="span6">
                                <ul class="unstyled">
                                    <li><a class="invarseColor" href="<c:url value="/"/>"><i class="icon-caret-right"></i>Home</a>
                                    </li>
                                    <li><a class="invarseColor" href="<c:url value="/aboutUs"/>"><i class="icon-caret-right"></i>About</a></li>
                                    <li><a class="invarseColor" href="<c:url value="/viewContacts"/>"><i class="icon-caret-right"></i>Contact</a></li>
                                    <li><a class="invarseColor" href="<c:url value="/viewServiceList"/>"><i class="icon-caret-right"></i>Pricing</a></li>
                                </ul>
                            </div>

                            <div class="span6">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="span3">
                    <div class="titleHeader clearfix">
                        <h3>Contact Info</h3>
                    </div>

                    <div class="contactInfo">
                        <ul class="unstyled">
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-volume-up"></i>
                                </button>
                                Call Us: <a class="invarseColor" href="#">5246-4697-891</a>
                            </li>
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-envelope-alt"></i>
                                </button>
                                <a class="invarseColor" href="#">shopfine@shopfine.com</a>
                            </li>
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-map-marker"></i>
                                </button>
                                22 Avenue Park, Los Angeles
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="span3">
                    <div class="titleHeader clearfix">
                        <h3>Newslatter</h3>
                    </div>

                    <div class="newslatter">
                        <form method="#" action="#">
                            <input class="input-block-level" type="text" name="email" value=""
                                   placeholder="Your Name..." Name="">
                            <input class="input-block-level" type="text" name="email" value=""
                                   placeholder="Your E-Mail..." Name="">
                            <button class="btn btn-block" type="submit" name="">Join Us Now</button>
                        </form>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="span12">
                <ul class="payments inline pull-right">
                    <li class="visia"></li>
                    <li class="paypal"></li>
                    <li class="electron"></li>
                    <li class="discover"></li>
                </ul>
                <p>© Copyrights 2012 for shopfine.com</p>
            </div>
        </div>
    </div>
</footer>