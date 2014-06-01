<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">

    <div class="row">
        <div class="titleHeader clearfix">
            <h3><spring:message code="admin.products.list"/></h3>
        </div>

        <br/>
        <table class="table">
            <thead>
            <tr>
                <th><h5><spring:message code="admin.products.list.image"/></h5></th>
                <th class="desc"><h5><spring:message code="admin.products.list.name"/></h5></th>
                <th><h5><spring:message code="admin.products.list.model"/></h5></th>
                <%--<th><h5><spring:message code="admin.products.list.stock"/>Stock</h5></th>--%>
                <th><h5><spring:message code="admin.products.list.price"/></h5></th>
                <th><h5><spring:message code="admin.products.list.action"/></h5></th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="service" items="${SERVICE_LIST}">
            <tr>

                <td>
                    <a href="#"><img width="72" height="72"
                                     src="data:image/jpeg;base64,${service.pictures.imageAsString}"
                                     alt=""></a>
                </td>

                <td class="desc">
                    <h4><a href="#" class="invarseColor">
                            ${service.name}
                    </a></h4>
                    <ul class="rating clearfix">
                        <li><i class="star-on"></i></li>
                        <li><i class="star-on"></i></li>
                        <li><i class="star-on"></i></li>
                        <li><i class="star-off"></i></li>
                        <li><i class="star-off"></i></li>
                    </ul>
                </td>

                <td>
                        ${service.type}
                </td>

                <%--<td>--%>
                    <%--<i style="color:#468847;" class="icon-ok"></i>--%>
                <%--</td>--%>

                <td>
                    <h2>$ ${service.price}</h2>
                </td>

                <td>
                    <button class="btn btn-small btn-danger" data-title="Remove" data-placement="top" rel="tooltip"
                            onclick="window.location.href='<c:url value="/removeService?id=${service.id}"/>'"
                            data-original-title=""><i class="icon-trash"></i></button>
                </td>
            </tr>
            </tbody>
            </c:forEach>

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
        <%--</div>--%>

    </div>
</div>