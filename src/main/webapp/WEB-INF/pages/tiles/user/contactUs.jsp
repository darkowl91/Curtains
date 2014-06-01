<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="row">

    <div class="span4">
        <div class="contact-info">
            <div class="titleHeader clearfix">
                <h3><spring:message code="contactUs.info"/></h3>
            </div>
            <address>
                <h3><i class="icon-pushpin"></i><spring:message code="contactUs.addres.info"/> :</h3>
                <h4><spring:message code="contactUs.inc"/></h4>
                <spring:message code="contactUs.addres.suite"/><br>
                <spring:message code="contactUs.addres.city"/><br>
                <abbr title="Phone">P:</abbr><spring:message code="contactUs.phone"/>
            </address>

            <address>
                <h3><i class="icon-volume-up"></i> <spring:message code="contactUs.call"/>:</h3>
                <spring:message code="contactUs.header.coll.phone"/>
            </address>

            <address>
                <h3><i class="icon-envelope-alt"></i><spring:message code="contactUs.email"/>:</h3>
                <abbr title="Phone"><spring:message code="contactUs.support"/>:</abbr> <a
                    href="mailto:example@example.com"><spring:message code="contactUs.email.first"/></a><br>
                <abbr title="Phone"><spring:message code="contactUs.sale"/>:</abbr> <a
                    href="mailto:example22@example.com"><spring:message code="contactUs.email.second"/></a>
            </address>

        </div>
    </div>

    <div class="span8">
        <div class="google-map">
            <iframe width="100%" height="246px" border="0" marginheight="0" marginwidth="0"
                    src="http://maps.google.com.eg/maps?f=q&amp;source=s_q&amp;hl=ar&amp;geocode=&amp;q=Tahrir,+%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D8%AF%D9%88%D8%A8%D8%A7%D8%B1%D8%A9,+%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D9%86%D9%8A%D9%84,+Al-Qahira&amp;aq=0&amp;oq=tahr&amp;sll=30.044133,31.235161&amp;sspn=0.200606,0.363579&amp;ie=UTF8&amp;hq=&amp;hnear=%D9%85%D9%8A%D8%AF%D8%A7%D9%86+%D8%A7%D9%84%D8%AA%D8%AD%D8%B1%D9%8A%D8%B1&amp;t=m&amp;z=14&amp;ll=30.0451,31.235428&amp;output=embed"></iframe>
        </div>


        <div class="contact-us-form">
            <div class="titleHeader clearfix">
                <h3><spring:message code="contactUs.email.message"/></h3>
            </div>
            <form:form method="post" modelAttribute="contact">
                <div class="controls controls-row">
                    <form:input path="name" cssClass="span4" placeholder="Your Name - Required"/>
                    <form:input path="email" cssClass="span4" placeholder="Your E-Mail - Required"/>
                </div>
                <div class="controls">
                    <form:textarea path="message" cssClass="span8" placeholder="You Message..."/>
                </div>
                <div class="controls">
                    <button type="submit" class="btn btn-primary pull-right"><spring:message code="contactUs.send"/>
                    </button>
                </div>
            </form:form>
        </div>

    </div>
</div>