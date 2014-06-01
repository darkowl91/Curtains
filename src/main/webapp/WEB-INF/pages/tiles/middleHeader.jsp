<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="middleHeader">
    <div class="container">

        <div class="middleContainer clearfix">

            <div class="siteLogo pull-left">
                <h1><a href="<c:url value="/"/>"><spring:message code="user.title"/></a></h1>
            </div>

            <div class="pull-right">

                <div class="btn-group">
                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                        RU <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu language" role="menu">
                        <li><a href="#">FR</a></li>
                        <li class="divider"></li>
                        <li><a href="#">CH</a></li>
                        <li class="divider"></li>
                        <li><a href="#">AR</a></li>
                    </ul>
                </div>

                <sec:authorize access="hasRole('ROLE_USER')">
                <%--<div class="btn-group">--%>
                    <%--<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">--%>
                        <%--<i class="icon-shopping-cart"></i> 3 Items--%>
                        <%--<span class="caret"></span>--%>
                    <%--</a>--%>

                    <%--<div class="dropdown-menu cart-content pull-right">--%>
                        <%--<table class="table-cart">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td class="cart-product-info">--%>
                                    <%--<a href="#"><img src="img/72x72.jpg" alt="product image"></a>--%>

                                    <%--<div class="cart-product-desc">--%>
                                        <%--<p><a class="invarseColor" href="#">Foliomania the designer portfolio--%>
                                            <%--brochure</a></p>--%>
                                        <%--<ul class="unstyled">--%>
                                            <%--<li>Available: Yes</li>--%>
                                            <%--<li>Color: Black</li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>
                                <%--</td>--%>
                                <%--<td class="cart-product-setting">--%>
                                    <%--<p><strong>1x-$500.00</strong></p>--%>
                                    <%--<a href="#" class="remove-pro" rel="tooltip" data-title="Delete"><i--%>
                                            <%--class="icon-trash"></i></a>--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td class="cart-product-info">--%>
                                    <%--<a href="#"><img src="img/72x72.jpg" alt="product image"></a>--%>

                                    <%--<div class="cart-product-desc">--%>
                                        <%--<p><a class="invarseColor" href="#">Foliomania the designer portfolio--%>
                                            <%--brochure</a></p>--%>
                                        <%--<ul class="unstyled">--%>
                                            <%--<li>Available: Yes</li>--%>
                                            <%--<li>Color: Black</li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>
                                <%--</td>--%>
                                <%--<td class="cart-product-setting">--%>
                                    <%--<p><strong>2x-$450.00</strong></p>--%>
                                    <%--<a href="#" class="remove-pro" rel="tooltip" data-title="Delete"><i--%>
                                            <%--class="icon-trash"></i></a>--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                            <%--<tfoot>--%>
                            <%--<tr>--%>
                                <%--<td class="cart-product-info">--%>
                                    <%--<a href="#" class="btn btn-small">Vew cart</a>--%>
                                    <%--<a href="#" class="btn btn-small btn-primary">Checkout</a>--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                    <%--<h3>TOTAL<br>$1,598.30</h3>--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <%--</tfoot>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                </sec:authorize>
            </div>

        </div>

    </div>
</div>
