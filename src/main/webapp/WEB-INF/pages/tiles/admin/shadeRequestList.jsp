<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container">

    <div class="row">
        <div class="titleHeader clearfix">
            <h3><spring:message code="admin.shadesRequest.list"/></h3>
        </div>
        <br/>
        <table class="table">
            <thead>
            <tr>
                <th><h5><spring:message code="admin.shadesRequest.list.user"/>User</h5></th>
                <th class="desc"><h5><spring:message code="admin.shadesRequest.list.user.detail"/>User Details</h5></th>
                <th><h5><spring:message code="admin.shadesRequest.list.product"/>Product</h5></th>
                <th><h5><spring:message code="admin.shadesRequest.list.product.details"/>Product Details</h5></th>
                <th><h5><spring:message code="admin.shadesRequest.list.price"/>Price</h5></th>
                <th><h5><spring:message code="admin.shadesRequest.list.action"/>Action</h5></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="shadeRequest" items="${SHADE_REQUEST}">
                <tr>
                    <td>
                        <a href="#"><img width="72" height="72"
                                         src="data:image/jpeg;base64,${shadeRequest.user.picture.imageAsString}"
                                         alt=""></a>
                    </td>
                    <td class="desc">
                        <h4>
                                ${shadeRequest.user.firstName} ${shadeRequest.user.lastName}
                        </h4>
                        <ul class="rating clearfix">
                            <li>${shadeRequest.user.email}</li>
                        </ul>
                        <ul class="unstyled">
                            <c:forEach var="userPhone" items="${shadeRequest.user.phones}" end="3">
                                <li>${userPhone.phoneValue}</li>
                            </c:forEach>
                        </ul>
                    </td>
                    <td>
                            ${shadeRequest.shade.name}
                    </td>
                    <td>
                        Model: ${shadeRequest.shade.type}
                        <br/>
                        Date: <f:formatDate type="BOTH" dateStyle="full" value="${shadeRequest.date.time}"/>
                    </td>
                    <td>
                        <h2>$ ${shadeRequest.shade.price}</h2>
                    </td>
                    <td>


                        <c:if test="${filterId == 'toApprove'}">
                            <button class="btn btn-small btn-primary" data-title="Approve" data-placement="top"
                                    rel="tooltip"
                                    onclick="window.location.href='<c:url
                                            value="/approveServiceRequest?id=${shadeRequest.id}"/>'"
                                    data-original-title=""><i style="color:#ffffff;" class="icon-ok"></i></button>
                        </c:if>


                        <button class="btn btn-small btn-danger" data-title="Remove" data-placement="top"
                                rel="tooltip" data-original-title="" onclick="window.location.href='<c:url
                                value="/removeServiceRequest?id=${shadeRequest.id}&filterId=${filterId}"/>'">
                            <i class="icon-trash"></i></button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <%--</div>


        <%--<div class="span3">--%>
        <%--<div class="titleHeader clearfix">--%>
        <%--<h3>Categories</h3>--%>
        <%--</div><!--end titleHeader-->--%>
        <%--<ul class="unstyled my-account">--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Login or Register</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Forget my Password</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> My Account</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> My wishlist</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Order History</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Downloads</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Returns</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> TRANSACTIONS</a></li>--%>
        <%--<li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Newlatters</a></li>--%>
        <%--</ul>--%>
        <%--</div><!--end span3-->--%>

    </div>

</div>