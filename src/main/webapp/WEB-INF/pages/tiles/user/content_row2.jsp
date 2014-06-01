<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row">

    <div class="span12">
        <div id="featuredItems">
            <!-- <div class="span12"> -->
            <div class="titleHeader clearfix">
                <h3>Featured Items</h3>

                <div class="pagers">
                    <div class="btn-toolbar">
                        <button class="btn btn-mini" onclick="window.location.href='<c:url value="/viewServiceList"/>'">View All</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <ul class="hProductItems clearfix">
                    <c:forEach var="service" items="${SERVICE_LIST}" end="6">
                        <li class="span3 clearfix">
                            <div class="thumbnail">
                                <a href="#"><img width="212" height="192"
                                                 src="data:image/jpeg;base64,${service.pictures.imageAsString}"
                                                 alt=""></a>
                            </div>
                            <div class="thumbSetting">
                                <div class="thumbTitle">
                                    <a href="#" class="invarseColor">
                                            ${service.name}
                                    </a>
                                </div>

                                <div class="thumbPrice">
                                    <span>${service.type}</span>
                                </div>

                                <div class="thumbPrice">
                                    <span>$ ${service.price}</span>
                                </div>

                                <div class="thumbButtons">
                                    <sec:authorize access="hasRole('ROLE_USER')">
                                        <button class="btn btn-primary btn-small" data-title="+To Cart"
                                                data-placement="top"
                                                rel="tooltip"
                                                onclick="makeAsAjaxRequest(${service.id})"
                                                >
                                            <i class="icon-shopping-cart"></i>
                                        </button>
                                    </sec:authorize>
                                    <%--<button class="btn btn-small" data-title="+To WishList" data-placement="top"--%>
                                            <%--rel="tooltip">--%>
                                        <%--<i class="icon-heart"></i>--%>
                                    <%--</button>--%>

                                    <%--<button class="btn btn-small" data-title="+To Compare" data-placement="top"--%>
                                            <%--rel="tooltip">--%>
                                        <%--<i class="icon-refresh"></i>--%>
                                    <%--</button>--%>
                                </div>

                                <ul class="rating">
                                    <li><i class="star-on"></i></li>
                                    <li><i class="star-on"></i></li>
                                    <li><i class="star-on"></i></li>
                                    <li><i class="star-on"></i></li>
                                    <li><i class="star-off"></i></li>
                                </ul>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>

<script>
    function makeAsAjaxRequest(id) {
        $.ajax({
            type: 'GET',
            url: "${pageContext.request.contextPath}/newServiceRequest?id=" + id,
            contentType: 'application/json; charset=utf-8',
            dataType: 'text',
            success: function (data) {
                var id = '#' + data.toString();
                $(id).addClass('in');
                generateNoty('success', 'center', 'Success');
            },
            error: function (data, status, er) {
                //debug
                //alert(data + status +er);
            }
        });
    }
</script>