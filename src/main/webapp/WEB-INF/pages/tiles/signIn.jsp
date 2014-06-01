<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row">

    <div class="span9">
        <div class="login">
            <table>
                <tr>
                    <td width="50%">
                        <h3><spring:message code="user.signIn.new"/></h3>

                        <p><spring:message code="user.signIn.info"/></p>
                        <a href="<c:url value="/signUp"/>" class="btn"><spring:message code="user.signIn.register"/></a>
                    </td>

                    <td width="50%">
                        <h3><spring:message code="user.signIn.returning"/></h3>

                        <form method="POST" action="<c:url value='/j_spring_security_check'/>" class="">
                            <div class="controls">
                                <label><spring:message code="user.signIn.username"/>: <span class="text-error">*</span></label>
                                <input type="text" name="j_username" value="" placeholder="username">
                            </div>
                            <div class="controls">
                                <label><spring:message code="user.signIn.password"/>: <span class="text-error">*</span></label>
                                <input type="password" name="j_password" value="" placeholder="**************">
                            </div>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" name="_spring_security_remember_me"><spring:message code="user.signIn.checkOut"/>
                                </label>
                                <button type="submit" class="btn btn-primary"><spring:message code="user.signIn.login"/></button>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>