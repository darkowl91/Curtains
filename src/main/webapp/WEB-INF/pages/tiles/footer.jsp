<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<footer>
    <div class="footerOuter">
        <div class="container">
            <div class="row-fluid">

                <div class="span6">
                    <div class="titleHeader clearfix">
                        <h3><spring:message code="user.footer.links"/></h3>
                    </div>


                    <div class="usefullLinks">
                        <div class="row-fluid">
                            <div class="span6">
                                <ul class="unstyled">
                                    <li><a class="invarseColor" href="<c:url value="/"/>"><i
                                            class="icon-caret-right"></i><spring:message code="user.footer.links.home"/></a>
                                    </li>
                                    <li><a class="invarseColor" href="<c:url value="/aboutUs"/>"><i
                                            class="icon-caret-right"></i><spring:message code="user.footer.links.about"/></a></li>
                                    <li><a class="invarseColor" href="<c:url value="/viewContacts"/>"><i
                                            class="icon-caret-right"></i><spring:message code="user.footer.links.contact"/></a></li>
                                    <li><a class="invarseColor" href="<c:url value="/viewServiceList"/>"><i
                                            class="icon-caret-right"></i><spring:message code="user.footer.links.pricing"/></a></li>
                                </ul>
                            </div>

                            <div class="span6">

                            </div>
                        </div>
                    </div>

                </div>
                <div class="span3">
                    <div class="titleHeader clearfix">
                        <h3> <spring:message code="user.footer.contact.info"/></h3>
                    </div>

                    <div class="contactInfo">
                        <ul class="unstyled">
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-volume-up"></i>
                                </button>
                                <spring:message code="user.footer.contact.call"/>: <a class="invarseColor" href="#"><spring:message code="user.footer.contact.phone"/></a>
                            </li>
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-envelope-alt"></i>
                                </button>
                                <a class="invarseColor" href="#"><spring:message code="user.footer.contact.email"/></a>
                            </li>
                            <li>
                                <button class="btn btn-small">
                                    <i class="icon-map-marker"></i>
                                </button>
                                <spring:message code="user.footer.contact.street"/>
                            </li>
                        </ul>
                    </div>

                </div>

                <div class="span3">
                    <div class="titleHeader clearfix">
                        <h3><spring:message code="user.footer.contact.newslatter"/></h3>
                    </div>
                    <%--<sec:authorize access="hasRole('ROLE_USER')">--%>
                        <div class="newslatter">
                            <form id="contact_form">
                                <input id="name" class="input-block-level" type="text" name="name"
                                       placeholder="Your Name..." Name="">
                                <input id="email" class="input-block-level" type="text" name="email"
                                       placeholder="Your E-Mail..." Name="">
                                <input id="message" class="input-block-level" type="text" name="message"
                                       placeholder="Message..." Name="">
                                <button class="btn btn-block" type="submit" name=""><spring:message code="user.contact.now"/></button>
                            </form>
                        </div>
                    <%--</sec:authorize>--%>

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
                <p><spring:message code="user.footer.copyrights"/></p>
            </div>
        </div>
    </div>
</footer>