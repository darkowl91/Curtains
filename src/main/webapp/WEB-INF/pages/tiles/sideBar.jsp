<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%--SIDEBAR--%>

<div class="switcher">
    <h3>Site Switcher</h3>
    <a class="Widget-toggle-link">+</a>

    <div class="switcher-content clearfix">
        <div class="layout-switch">
            <h4>Layout Style</h4>

            <div class="btn-group">
                <a id="wide-style" class="btn">Wide</a>
                <a id="boxed-style" class="btn">Boxed</a>
            </div>
        </div>

        <div class="color-switch clearfix">
            <h4>Color Style</h4>
            <a id="orange-color" class="color-switch-link">orange</a>
            <a id="blue-color" class="color-switch-link">blue</a>
            <a id="green-color" class="color-switch-link">green</a>
            <a id="brown-color" class="color-switch-link">brown</a>
            <a id="red-color" class="color-switch-link">red</a>
        </div>

        <div class="pattern-switch">
            <h4>BG Pattern</h4>
            <a style="background:url(/resources/img/backgrounds/retina_wood.png);">retina_wood</a>
            <a style="background:url(/resources/img/backgrounds/bgnoise_lg.png);">bgnoise_lg</a>
            <a style="background:url(/resources/img/backgrounds/purty_wood.png);">purty_wood</a>
            <a style="background:url(/resources/img/backgrounds/irongrip.png);">irongrip</a>
            <a style="background:url(/resources/img/backgrounds/low_contrast_linen.png);">low_contrast_linen</a>
            <a style="background:url(/resources/img/backgrounds/tex2res5.png);">tex2res5</a>
            <a style="background:url(/resources/img/backgrounds/wood_pattern.png);">wood_pattern</a>
        </div>

    </div>
</div>