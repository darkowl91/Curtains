<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row">

    <div class="span4">
        <div id="aboutUs">
            <div class="titleHeader clearfix">
                <h3>About Us</h3>

                <div class="pagers">
                    <div class="btn-toolbar">
                        <button class="btn btn-mini">Know More</button>
                    </div>
                </div>
            </div>

            <p>
                Quisque odio sem, molestie interdum sollicitudin ut, mollis a metus. Donec dignissim, odio nec elementum
                mattis, elit ligula sollicitudin massa, et venenatis neque nibh at urna. Pellentesque habitant morbi
                tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque egestas, velit non
                adipiscing pretium, tortor nulla fringilla nisl, ut aliquet felis nisl eu orci.
            </p>
        </div>
    </div>

    <div class="span4">
        <div id="twitterFeed">
            <div class="titleHeader clearfix">
                <h3>Twitter Feed</h3>

                <div class="pagers">
                    <div class="btn-toolbar">
                        <button class="btn btn-mini btn-info"><i class="icon-twitter"></i> Follow Us</button>
                    </div>
                </div>
            </div>

            <div class="tweet">
                <!-- tweets will generate automaticlly here-->
            </div>

        </div>
    </div>

    <div class="span4">
        <div id="facebookFeed">
            <div class="titleHeader clearfix">
                <h3>Facebook Like</h3>
            </div>
        </div>
    </div>

</div>