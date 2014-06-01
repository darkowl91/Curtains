<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container">

    <div class="row">


        <div class="titleHeader clearfix">
            <h3><spring:message code="admin.news.list"/></h3>
        </div>

        <br/>
        <table class="table">
            <thead>
            <tr>
                <th><h5><spring:message code="admin.news.list.image"/></h5></th>
                <th><h5><spring:message code="admin.news.list.title"/></h5></th>
                <th><h5><spring:message code="admin.news.list.description"/></h5></th>
                <th class="desc"><h5><spring:message code="admin.news.list.content"/></h5></th>
                <th><h5><spring:message code="admin.news.list.date"/></h5></th>
                <th><h5><spring:message code="admin.news.list.action"/></h5></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="newsItem" items="${NEWS_LIST}">
                <tr>
                    <td>
                        <a href="#">
                            <img height="92" width="92" src="data:image/jpeg;base64,${newsItem.picture.imageAsString}"
                                 alt="">
                        </a>
                    </td>
                    <td>
                            ${newsItem.title}
                    </td>
                    <td>
                            ${newsItem.description}
                    </td>
                    <td class="desc">

                            ${newsItem.content}

                    </td>

                    <td>
                        <f:formatDate type="DATE" dateStyle="full" value="${newsItem.date.time}"/>
                    </td>

                    <td>

                        <button class="btn btn-small btn-danger" data-title="Remove"
                                onclick="window.location.href='<c:url
                                        value="/deleteNews?id=${newsItem.id}"/>'"
                                data-placement="top" rel="tooltip"
                                data-original-title=""><i class="icon-trash"></i></button>


                        <button class="btn btn-small btn-primary" data-title="Edit"
                                onclick="window.location.href='<c:url
                                        value="/editNews?id=${newsItem.id}"/>'"
                                data-placement="top" rel="tooltip"
                                data-original-title=""><i class="icon-edit"></i></button>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <%--</div>--%>


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