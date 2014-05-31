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
                        <h3>New Customer</h3>

                        <p>By creating an account you will be able to shop faster, be up to date on an order's status,
                            and keep track of the orders you have previously made.</p>
                        <a href="<c:url value="/signUp"/>" class="btn">Register</a>
                    </td>

                    <td width="50%">
                        <h3>Returning Customer</h3>

                        <form method="POST" action="<c:url value='/j_spring_security_check'/>" class="">
                            <div class="controls">
                                <label>Your E-Mail: <span class="text-error">*</span></label>
                                <input type="text" name="j_username" value="" placeholder="username">
                            </div>
                            <div class="controls">
                                <label>Your Password: <span class="text-error">*</span></label>
                                <input type="password" name="j_password" value="" placeholder="**************">
                            </div>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" name="_spring_security_remember_me"> Check me out
                                </label>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>